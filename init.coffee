# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
atom.setSize(1024, 768)
atom.commands.add 'atom-text-editor', 'custom:vim', ->
  editor = atom.workspace.getActivePaneItem()
  fp = editor?.buffer.file?.path
  child_process = require 'child_process'
  pos = editor.getCursorBufferPosition()
  child_process.exec "cmd /c gvim.bat #{fp} +#{pos.row + 1} "
