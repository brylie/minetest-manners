local function say_excuse_me()
    minetest.sound_play("excuse_me", {
        object = player,
        max_hear_distance = 10,
        gain = 10.0,
    })
end

minetest.register_chatcommand("toot", {
    privs = {
        interact = true,
    },
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if not player then
            return false, "Player not found"
        end
        
        minetest.sound_play("fart", {
            object = player,
	        max_hear_distance = 10,
            gain = 10.0,
        })
        
        minetest.after(1.2, say_excuse_me)
        
        return true
    end,
})
minetest.register_chatcommand("burp", {
    privs = {
        interact = true,
    },
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if not player then
            return false, "Player not found"
        end


        minetest.sound_play("burp", {
            object = player,
	        max_hear_distance = 10,
            gain = 10.0,
        })

        minetest.after(1.2, say_excuse_me)

        return true
    end,
})