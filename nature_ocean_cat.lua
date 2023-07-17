local NatureColors = {
    {'Sunset Orange', '#fca311'},
    {'Sahara Sand', '#f2daba'},
    {'Clay Court', '#c0814a'},
    {'Leafy Green', '#6baa3b'},
    {'Tropical Sky Blue', '#45e2f7'},
    {'Pale Periwinkle', '#aeceea'},
    {'Country Meadow', '#00b089'},
    {'Midnight Blue', '#3b3b6d'},
    {'Ash Gray', '#757a7e'},
    {'Soft Magenta', '#d37fe0'},
}

function randomColor()
    local randomIndex = math.random(1, #NatureColors)
    local colorName, colorHex = unpack(NatureColors[randomIndex])
    return colorName, colorHex
end

function drawRandomBackground(canvas)
    local colorName, colorHex = randomColor()
    canvas:setBackgroundColor(colorHex)
    canvas:drawText(colorName, 'Midnight Blue', 20, 20, map.width, map.height)
end

function drawSquareBackground(canvas)
    local width = math.ceil(map.width / #NatureColors)
    local height = map.height

    for i, color in ipairs(NatureColors) do
        canvas:setBackgroundColor(color[2])
        canvas:fillRect(width * (i - 1), 0, width, height)
    end
end

function drawVerticalBackground(canvas)
    local width = map.width
    local height = math.ceil(map.height / #NatureColors)

    for i, color in ipairs(NatureColors) do
        canvas:setBackgroundColor(color[2])
        canvas:fillRect(0, height * (i - 1), width, height)
    end
end

function drawRainbowBackground(canvas)
    local gap = 20
    local x = 0
    local y = 0
    local width = (map.width - gap * (#NatureColors - 1)) / #NatureColors
    local height = map.height

    for i, color in ipairs(NatureColors) do
        canvas:setBackgroundColor(color[2])
        canvas:fillRect(x, y, width, height)
        x = x + width + gap
    end
end

function drawBackground(canvas)
    local choice = math.random(1, 4)

    if choice == 1 then
        drawRandomBackground(canvas)
    elseif choice == 2 then
        drawSquareBackground(canvas)
    elseif choice == 3 then
        drawVerticalBackground(canvas)
    elseif choice == 4 then
        drawRainbowBackground(canvas)
    end
end