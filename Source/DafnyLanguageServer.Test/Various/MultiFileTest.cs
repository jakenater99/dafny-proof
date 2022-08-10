﻿using Microsoft.Dafny.LanguageServer.IntegrationTest.Extensions;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OmniSharp.Extensions.LanguageServer.Protocol.Client;
using System.IO;
using System.Threading.Tasks;

namespace Microsoft.Dafny.LanguageServer.IntegrationTest.Various {
  [TestClass]
  public class MultiFileTest : DafnyLanguageServerTestBase {
    private static readonly string TestFilePath = Path.Combine(Directory.GetCurrentDirectory(), "Various", "TestFiles", "testFile.dfyp");

    private ILanguageClient client;

    [TestInitialize]
    public async Task SetUp() {
      client = await InitializeClient();
    }

    // https://github.com/dafny-lang/language-server-csharp/issues/40
    [TestMethod]
    public async Task ImplicitlyIncludingTheSameModuleTwiceDoesNotResultInDuplicateError() {
      var source = @"
include ""multi1.dfyp""
include ""multi2.dfyp""

method Test() {
  assert true;
}";
      var documentItem = CreateTestDocument(source, TestFilePath);
      await client.OpenDocumentAndWaitAsync(documentItem, CancellationToken);
      var document = await Documents.GetDocumentAsync(documentItem.Uri);
      Assert.IsNotNull(document);
      Assert.IsTrue(!document.Errors.HasErrors);
    }

    // https://github.com/dafny-lang/language-server-csharp/issues/40
    [TestMethod]
    public async Task ImplicitlyIncludingTheSameModuleTwiceDoesNotOverrideActualError() {
      var source = @"
include ""multi1.dfyp""
include ""multi2.dfyp""

method Test() {
  assert false;
}";
      var documentItem = CreateTestDocument(source, TestFilePath);
      await client.OpenDocumentAndWaitAsync(documentItem, CancellationToken);
      var document = await Documents.GetVerifiedDocumentAsync(documentItem.Uri);
      Assert.IsNotNull(document);
      Assert.AreEqual(1, document.Errors.ErrorCount);
    }
  }
}
