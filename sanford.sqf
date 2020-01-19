private ["_object","_objects"];
_objects = [
	["TentStorage",[9912.8926,5436.6812,0.058055971],-0.14028268],
	["Rubbish5",[9910.8506,5423.9985,-4.5776367e-005],0],
	["Rubbish5",[9910.7021,5426.2212],0],
	["Stove",[9908.3633,5432.6426,1.5258789e-005],0.68547076],
	["VaultStorage",[9907.0859,5429.582],-83.011688],
	["ItemStorage",[9907.4609,5428.3628,-0.034978073],101.79906],
	["TargetEpopup",[9908.0078,5425.9829,-1.5258789e-005],9.2431917],
	["TargetEpopup",[9908.709,5425.833,1.5258789e-005],9.2431917],
	["ItemStorage",[9907.2705,5427.3706],101.79906],
	["ItemStorage",[9907.3525,5427.8491,0.29761362],101.79906],
	["UAZWreck",[9910.0986,5438.5459],0],
	["T72Wreck",[9909.9014,5419.1016,6.1035156e-005],0],
	["Loudspeaker",[9907.625,5430.7222,3.3183823],-77.050476],
	["GunRack_DZ",[9907.8887,5430.6372,1.5258789e-005],8.6717949],
	["MetalFence_7",[9916.4131,5417.1807,-1.5258789e-005],121.82781],
	["MetalFence_6",[9913.96,5412.9668,-3.0517578e-005],-237.07593],
	["MetalFence_1",[9918.2607,5421.3442,1.5258789e-005],468.57031],
	["MetalFence_6",[9910.7627,5409.4028,-0.00010681152],-218.52751],
	["MetalFence_6",[9906.251,5407.7158],-182.70139],
	["MetalFence_7",[9921.0742,5435.2754,0.0081329346],81.168373],
	["MetalFence_6",[9915.5469,5442.9077,0.00064086914],-334.38617],
	["MetalFence_6",[9919.3545,5439.832],-304.06714],
	["OutHouse_DZ",[9909.0439,5435.8496,1.5258789e-005],-82.214897],
	["MetalGate_DZ",[9918.916,5423.8345,3.0517578e-005],104.1103],
	["MetalFence_1",[9920.708,5430.2412,-1.5258789e-005],465.2045],
	["ParkBench_DZ",[9916.2686,5437.5698,1.5258789e-005],0],
	["ParkBench_DZ",[9914.5068,5436.8828,4.5776367e-005],-47.623066],
	["ParkBench_DZ",[9918.04,5436.8105,3.0517578e-005],-136.49701],
	["WoodCrate_DZ",[9911.4893,5438.3794,-0.0058398391],0],
	["WoodCrate_DZ",[9911.5039,5437.2983,4.5776367e-005],0],
	["WoodCrate_DZ",[9911.4756,5437.9121,0.93481213],-33.607109],
	["Land_Campfire_burning",[9916.5029,5435.6436,1.5258789e-005],0],
	["FlagCarrierUSA_EP1",[9913.7754,5443.3853,2.8495307],0],
	["FlagCarrierBAF",[9904.8428,5408.1519,2.7339697],0],
	["FlagCarrierRedCross_EP1",[9920.3496,5435.9946,3.0514462],6.0471778],
	["FlagCarrierRedCross_EP1",[9916.0801,5417.3984,2.8280666],0],
	["Misc_TyreHeap",[9906.7734,5417.9585,3.0517578e-005],0],
	["Land_Ind_IlluminantTower",[9913.9385,5440.0532,1.5258789e-005],6.0471778],
	["MAP_garbage_misc",[9908.4648,5424.106,1.5258789e-005],0],
	["MAP_popelnice",[9909.3164,5434.8184,1.5258789e-005],0],
	["MAP_sekyraspalek",[9909.2168,5425.8423,4.5776367e-005],0],
	["Land_Water_pipe_EP1",[9917.8057,5434.8574],0],
	["Land_Water_pipe_EP1",[9914.9531,5435.3408,1.5258789e-005],0],
	["Land_Table_EP1",[9916.127,5432.8311],453.98666]
];
{
	_object = (_x select 0) createVehicle (_x select 1);
	_object setDir (_x select 2);
	_object setPos (_x select 1);
	_object allowDamage false;
	_object enableSimulation false;
} count _objects;


private ["_trader"];
{
	_trader = createAgent [_x select 0,_x select 1,[],0,"CAN_COLLIDE"]; 
	{_trader removeMagazine _x;} count magazines _trader;
	removeAllItems _trader;
	removeAllWeapons _trader;
	removeBackpack _trader;
	_trader switchMove "";
	_trader setDir (_x select 2);
	_trader setVehicleInit "this disableAI 'ANIM'; this disableAI 'AUTOTARGET'; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this allowDamage false;";
	_trader setUnitAbility 0.6;
	_trader disableAI "ANIM";
	_trader disableAI "AUTOTARGET";
	_trader disableAI "FSM";
	_trader disableAI "MOVE";
	_trader disableAI "TARGET";
	_trader setBehaviour "CARELESS";
	_trader setcaptive true;
	_trader forceSpeed 0;
	_trader allowDamage false;
	_trader enableSimulation false;
} forEach [
["Gangsta_merc7", [9910.58,5432.17,0.00143433],106]
];
processInitCommands;
