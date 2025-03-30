<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monaco Editor Example</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
        }
        #editor {
            width: 100%;
            height: 100vh;
        }
    </style>
</head>
<body>
    <div id="editor"></div>

    <!-- Load Monaco Editor from CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.33.0/min/vs/loader.min.js"></script>
    <script>
        require.config({ paths: { 'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.33.0/min/vs' }});
        require(['vs/editor/editor.main'], function() {
            // Initialize Monaco Editor
            const editor = monaco.editor.create(document.getElementById('editor'), {
                value: [
                    'function sayHello() {',
                    '\tconsole.log("Hello, World!");',
                    '}',
                    '',
                    'sayHello();'
                ].join('\n'),
                language: 'javascript',
                theme: 'vs-dark',
                automaticLayout: true
            });
        });
    </script>
</body>
</html>
