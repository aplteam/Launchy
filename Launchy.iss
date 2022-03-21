; This script is best executed by Launchy's "Make" utility.

#define MyAppVersion "7.4.0+242"
#define MyAppName "Launchy"
#define MyAppExeName "Launchy.exe"
#define MyAppPublisher "Kai Jaeger"
#define MyAppURL "https://github.com/aplteam/Launchy"
#define MyAppIcoName "Launchy.ico"
#define MyBlank " "
#define TargetDir "Dist\"
#define AppID "{{57141EAE-48E6-41A4-87B6-C33C19ED91BE}"
#define TempDir GetEnv('TMP')

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={#AppID}

AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}{#MyBlank}{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf64}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
AllowNoIcons=yes
OutputDir=C:/Users/kai/AppData/Local/Temp/InnoTempDir\{#AppID}
OutputBaseFilename="SetUp_{#MyAppName}_{#MyAppVersion}"
Compression=lzma
SolidCompression=yes
SetupIconFile={#MyAppIcoName}
PrivilegesRequired=admin


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License";

[Registry]

[Dirs]
Name: "{commonappdata}\{#MyAppName}"; Permissions: users-modify

[Files]
Source: "Launchy_manual.html"; DestDir: "{app}";
Source: "ReleaseNotes.html"; DestDir: "{app}";
Source: "Launchy.ico"; DestDir: "{app}";
Source: "Launchy.ini.RemoveMe"; DestDir: "{localappdata}\Launchy"; DestName:"Launchy.ini"; Flags: onlyifdoesntexist;
Source: "{#TargetDir}\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion ;

; The .NET files are needed for the "Check for updates" menu command
Source: "bridge180_unicode.dll"; DestDir: "{app}";
Source: "Dyalog.Net.Bridge.dll"; DestDir: "{app}"     
Source: "Dyalog.Net.Bridge.Host.dll"; DestDir: "{app}"     
Source: "dyalognet.dll"; DestDir: "{app}"     

; The Conga DLLs are needed for "Check for updates"
;Source: "conga32ssl64.dll"; DestDir: "{app}";
;Source: "conga32_64.dll"; DestDir: "{app}";

Source: "Conga*.dll"; DestDir: "{app}";

; NOTE: Don't use "Flags: ignoreversion" on any shared system files!

[Icons]
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\{#MyAppIcoName}"; Tasks: desktopicon

[Run]
Filename: "{app}\ReleaseNotes.html"; Description: "View the Launchy Release Notes"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Launchy"; Flags: postinstall skipifsilent nowait

; Strangely sometimes (rarely) this seems to be required in order to be able to Ride into Launchy:
; Filename: "netsh"; Description:"Give Launchy network access";  Parameters: "advfirewall firewall add rule dir=in program=""{{DefaultDirName}}\Launchy.exe"" action=allow"; Flags: postinstall nowait runhidden unchecked
; I've seen this once in a VM.

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Code]
