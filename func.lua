-- do the func

local function foo()
    print("hello from foo")
end

local function bar(name)
    if name == 'seg' then
        print('hey hey old friend!')
    else
        print('hello ' .. name .. ' from foo')
    end
end

foo()
bar('seg')
bar('john')


