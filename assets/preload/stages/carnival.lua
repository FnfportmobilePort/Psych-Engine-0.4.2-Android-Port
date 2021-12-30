local followchars = true;
local xx = 500;
local yy = 100;
local xx2 = 1000;
local yy2 = 400;
local ofs = 200;
local followchars = true;

function onCreate()
	-- Sprites
	makeLuaSprite('ground BG', 'groundshaded', -1400, -650)
	makeLuaSprite('sky', 'skyshaded', -1400, -800)
	makeLuaSprite('ground', 'ground', -1500, -780)
	
	-- Properties
	setScrollFactor('ground BG', 0.4, 0.4);
	setScrollFactor('sky', 0.4, 0.4);
	setScrollFactor('ground', 1, 0.9);
	setBlendMode('sky', 'overlay')
	setBlendMode('ground BG', 'overlay')
	setPropertyFromClass('flixel.addons.transition.FlxTransitionableState', 'skipNextTransOut', true);
	
	-- Adding
	addLuaSprite('sky', false)
	addLuaSprite('ground BG', false)
	addLuaSprite('ground', false)
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.37)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('defaultCamZoom',0.5)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	cameraShake('game', 0.011, 0.4)
end

function onStartCountdown()
setProperty('camFollowPos.x', 1950)
setProperty('camFollowPos.y', 900)
doTweenZoom('zoomout', 'camGame', 0.4, 1, 'quirtIn')
setProperty('defaultCamZoom', 0.4)
doTweenAlpha('darker', 'darkScreen', 0.4, 2, 'linear')
return Function_Continue;
end