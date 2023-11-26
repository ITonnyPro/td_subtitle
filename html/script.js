jQuery(document).ready(function(){
    window.addEventListener('message', function(event) {
        var data = event.data;
		if(data.show == false){
			jQuery("body").hide();
		} else {
			jQuery("body").show();
		}

		if(data.showSubtitle == false){
			jQuery("#subtitle").hide();
		} else {
			jQuery("#subtitle").fadeIn().css('display', 'flex');
			if(data.subtitleMessage != undefined) {
				var message = data.subtitleMessage;
				var name = data.subtitleName;
				var duration = 10000;
				if(data.subtitleDuration != undefined) {
					duration = data.subtitleDuration;
				}else {
					duration = duration
				}
				jQuery('#subtitle .text .name').text(name);
				// jQuery('#subtitle .text .message').text(message);
				jQuery('#subtitle .text .message').t(message);
			}
			setTimeout(function() {
				// jQuery('#subtitle .text .message').t('off', true);
				fetch(`https://${GetParentResourceName()}/td_subtitle_close`, {
					method: 'POST'
				});
			},duration);
		}

		// if(data.isPlayerDeadinVeh != undefined) {
		// 	data.isPlayerDeadinVeh.forEach(item => {
		// 		var deadplayer = item.name;
		// 		var iddeadplayer = item.id;
		// 		jQuery('.player-list').append('<div class="player-line"><div class="name">'+ deadplayer +'</Var></div><div class="outveh" id="'+ iddeadplayer +'"><i class="fa-solid fa-right-from-bracket"></i></div></div>');
		// 	});
		// }
    });


	jQuery('.disconnect').click(function() {
		fetch(`https://${GetParentResourceName()}/td_subtitle_close`, {
			method: 'POST'
		});
	})
});