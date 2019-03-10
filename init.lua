local function emit_player_sound(player_name, sound_type)
    local player = minetest.get_player_by_name(player_name)

    -- make sure player is in game
    if player then
        minetest.sound_play(sound_type, {
            object = player,
        })
    end
end

function be_polite(player_name)
    emit_player_sound(player_name, "excuse_me")
end

minetest.register_chatcommand("toot", {
    privs = {
        interact = true,
    },
    func = function(player_name, param)
        emit_player_sound(player_name, "toot")
        
        minetest.after(1.2, be_polite, player_name)
        
        return true
    end,
})

minetest.register_chatcommand("burp", {
    privs = {
        interact = true,
    },
    func = function(player_name, param)
        emit_player_sound(player_name, "burp")

        minetest.after(1.2, be_polite, player_name)

        return true
    end,
})