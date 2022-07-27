dafny-proof
0. Install wsl and ubuntu (As admin in powershell)
>wsl --install
or
>wsl --install -d Ubuntu
1. Update Permissions to executable
$chmod +x Scripts/package.py
$chmod +x Scripts/publish-release.sh
$chmod +x Source/DafnyRuntime/DafnyRuntimeJava/gradlew
2. Install make
$sudo apt install make
https://linuxhint.com/install-make-ubuntu/
3. Install .NET
$wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
$sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0
https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#2110-
4. Install Java
$sudo apt install default-jre
$sudo apt install default-jdk
https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04
5. Install jq
$ sudo apt install -y jq
6. Put PAT in ~/github.token
7. Change version in Source/version.cs
8. Package 
$ Scripts/package.py $VER
9. Publish
$ Scripts/publish-release.sh $VER
10. On github publish the release and add notes (Currently a draft)

dafny-proof-vscode
1. Build Extension 
(Change version in src/constants.ts and package.json)
> vsce package
2. Install by going to ... in top right of extension tab and selecting install from vsix and select dafny-proof-vscode-1.0.0
3. Open a .dfyp file and dafny-proof will install
