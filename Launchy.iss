; This script is best executed by Launchy's "Make" utility.

#define MyAppVersion "6.0.2.132"
#define MyAppName "Launchy"
#define MyAppExeName "Launchy.exe"
#define MyAppPublisher "APL Team Ltd"
#define MyAppURL "https://github.com/aplteam/Launchy"
#define MyAppIcoName "Launchy.ico"
#define MyBlank " "
#define TargetDir "Dist\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={{57141EAE-48E6-41A4-87B6-C33C19ED91BE}

AppName="{#MyAppName}"
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}{#MyBlank}{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf32}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
AllowNoIcons=yes
OutputDir={#TargetDir}
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
Source: "{#TargetDir}\{#MyAppExeName}"; DestDir: "{app}"

; The .NET file are needed for the "Check for updates" menu command
Source: "bridge170_unicode.dll"; DestDir: "{app}";
Source: "dyalognet.dll"; DestDir: "{app}"     

; ----- During beta phase only: --------
;Source: "Conga*.dll"; DestDir: "{app}";
; -------- (For a Ride!) ---------------

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