<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Monaco Editor</title>
  <script src="https://unpkg.com/monaco-editor@latest/min/vs/loader.js"></script>
  <style>
    /* Add styles directly here */
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      overflow: hidden;
    }
    #editor {
      width: 100%;
      height: 100%;
    }
  </style>
</head>
<body>
  <!-- Editor container -->
  <div id="editor"></div>
  <script>
    /* Include scripts directly here */
    require.config({ paths: { 'vs': 'https://unpkg.com/monaco-editor/min/vs' } });
    require(['vs/editor/editor.main'], function () {
      monaco.editor.create(document.getElementById('editor'), {
        value: "// Welcome to your Monaco Editor!\nfunction hello() {\n\tconsole.log('Hello, World!');\n}",
        language: 'javascript',
        theme: 'vs-dark'
      });
    });
  </script>
</body>
</html>
