vim-reduce-line
==============

This plugin can produce you to reduce looong lines in your code.

Now plugin doesn't know anything about context.

Installation
============
```viml
Plug 'kovetskiy/vim-reduce-line'
```

Usage
=====

Bindings:
```viml
nnoremal <Leader>m :call TryToReduce()<CR>
```

Before:
```php
$this->_someProtectedStuff->doSomethingStupidWithArguments(argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
```

After:
```php
$this->_someProtectedStuff->doSomethingStupidWithArguments(
    argument1,
    argument2,
    argument3,
    argument4,
    argument5,
    argument6,
    argument7,
    argument8
)
```
