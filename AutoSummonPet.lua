local events = {"PLAYER_ALIVE"}

function AutoSummonPet_OnLoad(self)
    for i, v in ipairs(events) do
        self:RegisterEvent(v);
    end
end

function AutoSummonPet_OnEvent(self, event, ...)
    if (C_PetJournal.GetSummonedPetGUID() == nil) then
        print("AutoSummonPet: Summoning pet...")
        C_PetJournal.SummonRandomPet(true)
    end
end
