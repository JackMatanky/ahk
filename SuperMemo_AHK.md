# SuperMemo AutoHotkey Notes

## 1. Windows

### 1.1 Element Window

Description: The element window displays your learning material. You can see one "page of information" at a time. The displayed page or flashcard is called an element.

Link: <https://help.supermemo.org/wiki/Element_window>

AHK Class: ahk_class TElWind

### 1.2 Content Window (Knowledge Tree)

Description:

Link: <>

Shortcut: Alt + C

AHK Class: ahk_class TContents

### 1.3 Browser Window

Description:

Link: <>

Shortcut:

AHK Class: ahk_class TBrowser

### 1.4 Statistics Window

Description:

Link: <>

Shortcut:

AHK Class: ahk_class TStats

### 1.5 Element Data Window

Description:

Link: <>

Shortcut:

### 1.6 Registry Window

Description:

Link: <>

Shortcut:

### 1.7 SuperMemo Commander

Description:

Link: <>

Shortcut: Ctrl + Enter

AHK Class: ahk_class TCommanderDlg

### Toolbar

AHK Class: ahk_class TSMMain

### Template Registry

Description:

Link: <>

Shortcut: Ctrl + Enter

AHK Class: ahk_class TRegistryForm
Window Title: Template Registry (17 members)

### Concept Registry

Description:

Link: <>

Shortcut: Ctrl + Enter

AHK Class: ahk_class TRegistryForm

Window Title:

## 2. Menus

### 2.1 Element Menu

Description: The element menu can be used to execute operations on the currently displayed element in the element window.

Link: <https://help.supermemo.org/wiki/Element_menu>

Shortcuts:

1. Element Window: Alt + F10
2. From other windows: Alt → Alt + F10

### 2.2 Component Menu

Link:

### 2.3 Browser Menu

Link:

### 2.4 Contents Menu

Link:

### 2.5 Registry Menu

Link:

### 2.6 Subset Processing Menu

Link:
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

### 3.2 Apply window layout

Shortcut for Window Menu:

## Keyboard Shortcuts

### Mouse shortcuts

Click
: Edit component (e.g. to edit text)

Shift+Click
: Edit file (e.g. to edit pictures)

Ctrl+Click
: View file associated with the component (e.g. to view a picture in the default viewer). In HTML components, Ctrl+click works like in Internet Explorer (e.g. select paragraph or word, follow hyperlink, etc.)

Alt+Click
: switch components (or element) between presentation, editing and dragging modes

### Single keys

A
: Edit the first answer

E
: Edit texts

M
: in the browser: memorize an element

Q
: Edit the first question

Del
: Delete the currently displayed element (use Shift+Ctrl+Del when in the editing mode)

Ins
: in the Contents window: insert element
: in the browser: select or deselect the element
: in the plan: insert a new activity in the currently selected row

Tab
: in dialogs: move to the next button, checkbox, etc.
: in the element window: move to the next component
: in the tasklist manager: select a new tasklist

Enter (in browser)
: display the currently selected element in the element window

Esc
: close the concept selection list

### Function keys

F1
: Help

F2
: Toolkit: Memory: Memory status

F3
: in element window, text components: search for a string
: in Contents window, element browser, registries, tasklist manager: repeat last search

F4
: Open the tasklist manager with the currently used tasklist

F5
: Apply Warrior layout without making it the default layout

F6
: in HTML/RTF component, filter source (e.g. to remove formatting that makes incremental reading difficult)
: in the File: Open collection dialog box, rename the currently selected collection

F7
: Toolkit: Memory: 4D Graphs

F8
: Not used consistently. It may show up in test, debug, or release versions in various contexts

F9
: View the file associated with the component. For example, if you use MS Office, F9 on rich text components will start editing your texts in MS Word, and F9 on HTML components will use your default browser to view your HTML texts (see also: Ctrl+F9 for editing files)

F11
: Random review in collection, branch of the knowledge tree, or browser
: Random jump/pick in a registry or tasklist manager

F12
: Sleep and learning timeline (Toolkit: Sleep Chart)

### Shift+key

Shift+Enter
: in HTML components: single-spaced new line in HTML (tag <br>);
: in the Contents window: View the currently focused element; Enter can also be used if the element does not have children

Shift+Tab
: Move to the previous option or option group

Shift+F2
: Search SuperMemo Wiki Help

Shift+F3
: Search for leeches

Shift+F4
: Import mail from Windows (Live) Mail (or any other e-mail client supporting EML) or MS Outlook 2000 or later for incremental reading

Shift+F12
: Backup

### Ctrl+key

Ctrl+click
: in HTML component: select paragraph or word, follow hyperlink, etc. depending on the context
: in image, sound, and video components: View the file in the associated application
: in text, RTF and spelling components: view the translation
: in script components: Edit the associated script file

Ctrl+Up
: go to the parent of the current element

Ctrl+Down
: in the Contents window: go to the first child of the current element (if available)

Ctrl+Enter
: SuperMemo Commander
: in the tasklist manager: display the currently selected task in the element window

Ctrl+Space
: in the Contents window: browse the elements belonging to the selected branch
: in the element window: browse all descendants of the current element

Ctrl+]
: increase font size

Ctrl+[
: decrease font size

Ctrl+Del
: in the element window: delete the current component
: in the Plan: delete the currently selected activity
: in the tasklist manager: delete the currently selected task

Ctrl+Home
: in the Contents window, go the first element of the knowledge tree

Ctrl+End
: in the Contents window, go to the last element of the knowledge tree

Ctrl+F2
: Learn: Go neural

Ctrl+F3
: Search the web for the currently selected phrase (Google, Wikipedia, dictionaries, etc.)

Ctrl+F5
: Restore the default windows layout

Ctrl+F7
: Set a read-point in an article

Ctrl+F8
: Download remote images referred to in an HTML component

Ctrl+F9
: Edit the file associated with the component. For example, Ctrl+F9 on image components will start editing your images in the default picture editor

Ctrl+F10
: Play again (e.g. to repeat a sound when learning pronunciation)

Ctrl+F11
: Random learning
: in browser: Random test

Ctrl+F12
: Repair collection

Ctrl+A
: in text components: Select All
: in Web import: Check all
: in downloading images: Select All (selecting all images to download)

Ctrl+B
: in text components: bold font (if applicable)
: in the registry window: view registry member users in the browser (View: Browse current)

Ctrl+C
: Copy to the clipboard

Ctrl+D
: in the element window: Dismiss the current element
: in the tasklist manager: Dismiss the current task (i.e. move it to the archive)
; in the Contents window: Dismiss the current element

Ctrl+E
: in the element window: switch from the presentation mode to the editing mode, or from the editing mode to the drag-and-size mode, or from the dragging mode to the presentation mode
: in Plan: edit the currently selected activity
: in the tasklist manager: edit the currently selected task

Ctrl+F
: Find elements
: in the Plan, Fix
: in other windows, Find

Ctrl+G
: go to an element with a given number (see the caption of Element data window)
: in the registry window: select a registry member by its physical position in the registry

Ctrl+I
: unlocked SuperMemo: Italic font in text components (if applicable)
: locked SuperMemo: File: Installation: Input password

Ctrl+J
: Learning: Reschedule

Ctrl+K
: in the element window: Create a hyperlink
: in the Contents window: Convert the current branch into a concept

Ctrl+L
: in the element window: Learn
: in the Contents window: start branch learning beginning with the selected element
: in browser: start subset learning on the browser

Ctrl+M
: Remember, i.e. introduce an element into the learning process; make it memorized
: in the tasklist manager: memorize the currently selected task

Ctrl+N
: Add a new article to the current concept group by pasting the text from the clipboard
Ctrl+O
: File: Favorites
: in the Plan: open a plan

Ctrl+P
: Toolkit: Plan - plan your daily schedule

Ctrl+Q
: Import file (in a component)(e.g. to add sound to a sound component)

Ctrl+R
: in the main window, browser, registry window: Search/Find and replace
: in the Find elements dialog: restore the parameters of the most recently executed search

Ctrl+S
: Search for texts containing a given string (globally or in registries)
: in the browser: apply the default sorting criteria to sort the browser (e.g. before review)
: in the tasklist manager: sort the tasklist for priority
: in the Plan: save changes to the current schedule

Ctrl+T
: Edit next component (e.g. quickly switch between the question and the answer)
: in the tasklist manager: transfer the currently selected task to another tasklist
: in the Plan: Split the currently selected activity

Ctrl+U
: Underline font in text components (if applicable)

Ctrl+V
: Paste from clipboard

Ctrl+W
: Toolkit
: Workload

Ctrl+X
: Cut

Ctrl+Y
: Redo last Undo (in HTML text editing)

Ctrl+Z
: Undo text editing (same as Alt+Backspace)

### Alt+key

Alt+\
: in the editing mode, delete texts before the cursor

Alt+.
: Delete texts after the cursor (without references)

Alt+Enter
: in Toolkit
: Plan
: start or end editing an activity

Alt+Left arrow
in the element window
: Back, i.e. revisit a recently visited element
in the registry window
: Change the registry subset to its immediate superset, if available

Alt+Right arrow
in the element window
: Forward, i.e. move forward on the list of recently visited elements
in the registry window
: Change to the next registry subset, if available

Alt+Backspace
: Undo text editing (same as Ctrl+Z)

Alt+PgUp
: Previous element in the knowledge tree (in the element window)

Alt+PgDn
: Next element in the knowledge tree (in the element window)

Alt+Home
: First element in the knowledge tree (in the element window)

Alt+End
: Last element in the knowledge tree (in the element window)

Alt+F1
: Add a new task

Alt+F4
: Close the program (or the currently active dialog box)

Alt+F7
: Go to the read-point (in text, RTF and HTML components)

Alt+F10
: Open the context menu of the currently active window (element window, browser, Contents window, registry window, etc.)

Alt+F11
: Random test or Resume random test

Alt+F12
: Open the component menu of the current component

Alt+A
: Add new

Alt+B
: Begin the currently selected activity in Plan

Alt+C
: View the Contents window

Alt+D
: Duplicate an element

Alt+E
: Edit menu

Alt+F
: File menu

Alt+G
: Cancel grade

Alt+H
: Help menu

Alt+L
: Learn menu

Alt+N
: Add a new note empty topic to the current concept group
: in the registry window: Start a neural review over the selected registry member

Alt+P
: Modify the priority of the current element

Alt+Q
: Choose a reference field label for the selected text (in HTML components)

Alt+R
: in the element window: Rename member on the component menu to rename a registry member associated with the component
: in the registry window: Rename member on the registry menu to rename the selected registry member
: in the File: Open collection dialog box, rename the currently selected collection

Alt+S
: Search menu (on the Professional level)

Alt+T
: Edit: Title or Reference: Title depending on the current text selection and the current component type (in the element window)

Alt+U
: translate all text components in the element window

Alt+V
: View menu

Alt+W
: Window menu

Alt+X
: when text is selected in an HTML component, it works the same as Reading: Remember extract
: when there is no text selected but there is a YouTube extract, it will extract it
: when there is no text selected but there is a picture, it works the same as Image: Extract

Alt+Y
: provide phonetic transcription to all text components in the element window

Alt+Z
: Reading: Remember cloze

### Shift+Ctrl+key

Shift+Ctrl+Up arrow
: Increase the priority of the element
: For topics: it will decrease the current value of A-Factor

Shift+Ctrl+Down arrow
: Decrease the priority of the element
: For topics: it will increase the current value of A-Factor

Shift+Ctrl+Enter
: in the element window or in the Contents window: Done (i.e. dismiss or delete an element that has been processed and is no longer needed)
: in the registry window: display selected registry members in a separate subset
: in the tasklist manager: go to the currently selected task
: in the Plan: terminate the schedule at the selected activity

Shift+Ctrl+Del
: in the element window: Delete the currently displayed element

Shift+Ctrl+F2
: Template: Impose template

Shift+Ctrl+F5
: Save as default (window layout)

Shift+Ctrl+F6
: View source code of HTML and RTF files (in HTML and rich edit components)

Shift+Ctrl+F7
: Clear a read-point

Shift+Ctrl+F8
: Process image

Shift+Ctrl+F11
: randomize the content of the element browser

Shift+Ctrl+F12
: Convert formatted text (in HTML and rich edit components) to plain text

Shift+Ctrl+1
: Text: Convert: Parse HTML (on the HTML component menu)

Shift+Ctrl+A
: Import web pages or pictures from the currently running instances of Internet Explorer
: in Plan: archive the current schedule

Shift+Ctrl+B
: in the registry window: Open a browser with all elements that use any of the selected members of the registry
: in the tasklist manager: Browse all tasks in a given tasklist
: in the Contents window and in the browser: Compute statistics for a selected set of elements
: in web imports: Browse duplicates

Shift+Ctrl+C
: File: Copy collection (e.g. for backup purposes)

Shift+Ctrl+D
: Add to final drill

Shift+Ctrl+E
: in the element window: Send element, files, or extract via e-mail
: in Plan: Define activities that should be used in Plan on different days

Shift+Ctrl+F
: Link registry font (in text components)

Shift+Ctrl+G
: Hide SuperMemo and put it to the system tray/notification area

Shift+Ctrl+H
: Display repetition history for the currently displayed element in the element window

Shift+Ctrl+I
: Reading: Ignore

Shift+Ctrl+J
: Later today, i.e. schedule the review of the element
later today

Shift+Ctrl+K
: Link registry member

Shift+Ctrl+L
: when editing HTML: Add a bullet to the currently edited text
: in the browser: Review all
: in the Contents window: Review all

Shift+Ctrl+M
: in the element window: Change the look of an element with a template
: in the Contents window: Apply a selected template to the elements of a selected branch
: in a browser: Merge browser elements with template

Shift+Ctrl+O
: Edit component order

Shift+Ctrl+P
: Edit Element parameters

Shift+Ctrl+Q
: Change the way in which the picture is stretched in the image component

Shift+Ctrl+R
: Execute repetition, i.e. execute a mid-interval repetition before its scheduled repetition date

Shift+Ctrl+S
: in the element window: Swap question with answer
: in the Plan: save the schedule template for daily execution

Shift+Ctrl+T
: in the element window: transfer the current element to another collection
: in the Contents window: replicate a branch by transferring copies of its elements to another collection

Shift+Ctrl+U
: View source data of the element (i.e. without the applied template)

Shift+Ctrl+V
: Move current element to a selected branch of the knowledge tree (Edit: Move)

Shift+Ctrl+W
: Import from Wikipedia

Shift+Ctrl+X
: Display the Ancestors window with the position of the element in the knowledge tree

Shift+Ctrl+Y
: Import from YouTube

Shift+Ctrl+Space
: in the presentation mode, resume subset learning

### Ctrl+Alt+key

Ctrl+Alt+Up
: Drag up all components in dragging mode (in the element window)

Ctrl+Alt+Left
: Drag left all components in dragging mode (in the element window)

Ctrl+Alt+Right
: Drag right all components in dragging mode (in the element window)

Ctrl+Alt+Down
: Drag down all components in dragging mode (in the element window)

Ctrl+Alt+Enter
: Collapse the current branch (in the contents window)

Ctrl+Alt+F10
: Show or hide the background behind SuperMemo

Ctrl+Alt+F12
: Move one SuperMemo difficulty level up (see Ctrl+Alt+Shift+F12)

### Shift+Alt+key

Shift+Alt+A
: Toolkit: Statistics: Analysis

Shift+Alt+H
: Reading: Insert: Insert splitline (on the component menu)

Shift+Alt+L
: Test the repetition cycle (display components as if during learning using their Display at property)

Shift+Alt+M
: Mercy

Shift+Alt+T
: Tile selected components

Shift+Alt+X
: Reading: Schedule extract (on the component menu)

### Ctrl+Alt+Shift+key

Ctrl+Alt+Shift+F12
: Move one SuperMemo difficulty level down (see Ctrl+Alt+F12)
