function onCreate()
    makeLuaSprite('house','bgHouse',-162.1,-386.1)
    makeLuaSprite('sky','bgSky',-250.1,-386.1)
    setLuaSpriteScrollFactor("sky", 0.5, 0)
    addLuaSprite('sky',false)
    addLuaSprite('house',false)
    close(true)
end