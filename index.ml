<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Monaco Editor - OCaml</title>
  <script src="https://unpkg.com/monaco-editor@latest/min/vs/loader.js"></script>
  <style>
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
    // Load Monaco Editor configuration
    require.config({ paths: { 'vs': 'https://unpkg.com/monaco-editor/min/vs' } });
    require(['vs/editor/editor.main'], function () {
      // Create the editor, tailored for an OCaml file
      monaco.editor.create(document.getElementById('editor'), {
        value: `(* index.ml *)\n\nlet greet name =\n  Printf.printf "Hello, %s!\\n" name\n\nlet () = greet "World"`,
        language: 'ocaml', // OCaml language support
        theme: 'vs-dark',  // Dark theme
        scrollBeyondLastLine: false, // Disable unnecessary scrolling
        automaticLayout: true       // Adjust editor size dynamically
      });
    });
  </script>
</body>
</html>
