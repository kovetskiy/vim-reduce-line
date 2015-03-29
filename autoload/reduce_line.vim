function! TryToReduce()
    let startLine = line(".")
    let content = getline(startLine)

    let content = substitute(content, "[,\(]", "&\r", "g")
    "let content = substitute(content, "[\)]", "\r&", "g")
    let content = substitute(content, "\(\r\r\)", "()", "g")
    let content = substitute(content, "\rarray\r", "array", "g")

    execute 'normal S'
    execute 'normal i' . content

    let currentLine = line(".")
    let cow = currentLine - startLine + 2

    execute 'normal ' . (startLine - 1) . 'gg'
    execute 'normal ' . cow . '=='
    execute 'normal ' . startLine . 'gg^'
endfunction
