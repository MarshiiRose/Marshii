--third layer (basically jsut yoinked ts from Crypid mod bc I'm not smart enough to figure ts out myself </3)
SMODS.DrawStep({
    key = "floating_sprite2",
    order = 59, --gonna be so fr idk what this does, but it might be important
    func = function(self)
        if self.config.center.soul_pos and self.config.center.soul_pos.extra then
            local scale_mod = 0.05 --ima tweak these values so it aint *all* copied from Cryptid ;-;
            local rotate_mod = 0.03
            if self.children.floating_sprite2 then
                self.children.floating_sprite2:draw_shader(
                    "dissolve",
                    0,
                    nil,
                    nil,
                    self.children.center,
                    scale_mod,
                    rotate_mod,
                    nil,
                    0.1,
                    nil,
                    0.6
                )
                self.children.floating_sprite2:draw_shader(
                    "dissolve",
                    nil,
                    nil,
                    nil,
                    self.children.center,
                    scale_mod,
                    rotate_mod
                )
            else
                local _center = self.config.center
                if _center and _center.soul_pos and _center.soul_pos.extra then
                    self.children.floating_sprite2 = Sprite(
                        self.T.x,
                        self.T.y,
                        self.T.w,
                        self.T.h,
                        G.ASSET_ATLAS[_center.atlas or _center.set],
                        _center.soul_pos.extra
                    )
                    self.children.floating_sprite2.role.draw_major = self
                    self.children.floating_sprite2.states.hover.can = false
                    self.children.floating_sprite2.states.click.can = false
                end
            end
        end
    end,
        conditions = { vortex = false, facing = "front" },
})
SMODS.draw_ignore_keys.floating_sprite2 = true
