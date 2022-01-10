function onEvent(name, value1, value2)
    if name == 'Jumpscare' then
    numb = tonumber(value1);
    if numb <= 0 then
    makeLuaSprite('littleman', 'jumpscare/littleman_scare', 0, 0)
    addLuaSprite('littleman', true)
    setLuaSpriteCamera('littleman', 'camHUD')
    runTimer('manscare', 0.5)
    end
    if numb == 1 then
    makeLuaSprite('cheeky', 'jumpscare/cheeky_scare', 0, 0)
    addLuaSprite('cheeky', true)
    setLuaSpriteCamera('cheeky', 'camHUD')
    runTimer('cheekyscare', 0.5)
    end
    if numb >= 2 then
    makeLuaSprite('ron', 'jumpscare/ron_scare', 0, 0)
    addLuaSprite('ron', true)
    setLuaSpriteCamera('ron', 'camHUD')
    runTimer('ronscare', 0.5)
    end
    end
end 
function onTimerCompleted(tag)
    if tag == 'manscare' then
        removeLuaSprite('littleman', false)
    end
    if tag == 'cheekyscare' then
        removeLuaSprite('cheeky', false)
    end
    if tag == 'ronscare' then
        removeLuaSprite('ron', false)
    end
end