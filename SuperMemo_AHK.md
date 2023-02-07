# SuperMemo AutoHotkey Notes

## 1. Windows

### 1.1 Element Window

AHK Class: ahk_class TElWind

### 1.2 Content Window (Knowledge Tree)

AHK Class: ahk_class TContents

### 1.3 SuperMemo Commander

AHK Class: ahk_class TCommanderDlg
Shortcut: Ctrl + Enter

### Browser

AHK Class: ahk_class TBrowser

### Toolbar

AHK Class: ahk_class TSMMain

### Template and Concept Registry

AHK Class: ahk_class TRegistryForm

## 2. Menus

Item contents window menu:
AHK Class: ahk_class #32768

## 3. Script Ideas

### 3.1 Split an article by custom string

Window Title: Select
Class: ahk_class TChecksDlg
ClassNN: TCheckListBox1

1. Ctrl + Enter to get the SM Commander
2. Type "Split"
3. Enter
4. Check the state of the checkboxes in the "Select which markers should be used in the split:" window
5. Uncheck every box except the last checkbox, "Custom string"
6.
