-- exports['td_subtitle']:showSubtitle(name, message, duration)

local isShowSubtitle = false

RegisterNUICallback('td_subtitle_close', function(args)
    SetNuiFocus(false, false)
	isShowSubtitle = false
	SendNUIMessage({
		show = false,
        showSubtitle = isShowSubtitle,
		subtitleMessage = '',
        subtitleDuration = '',
	})
end)

function showSubtitle(name, message, duration)
    isShowSubtitle = true
    SetNuiFocus(false, false)
    SendNUIMessage({
        show = true,
        showSubtitle = isShowSubtitle,
        subtitleName = name,
        subtitleMessage = message,
        subtitleDuration = duration,
    })
end
