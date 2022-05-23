// farm jon
main (){}
#include <a_samp>
#include <streamer>

#define farm_pickup_pos -382.4951,-1426.1854,26.1980
new bool:farmStatus[MAX_PLAYERS] = false;
new bool:farmCheck[MAX_PLAYERS] = false;
new bool:farmPlant[MAX_PLAYERS] = false;
new farmAmount[MAX_PLAYERS];
new farmTotal[MAX_PLAYERS];
new farmPickup;

public OnGameModeInit()
{
    farmPickup = CreatePickup(1275,23, farm_pickup_pos);
    
    CreateDynamicObject(3286, -308.471527, -1432.493530, 18.638300, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1454, -312.177887, -1433.543823, 14.697500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1297, -310.971191, -1429.290649, 17.112000, 0.000000, 0.000000, 9.000000, -1, -1);
	CreateDynamicObject(1454, -311.962708, -1427.070557, 14.217500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -312.177887, -1420.757935, 14.217500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1297, -310.508789, -1414.315308, 16.532000, 0.000000, 0.000000, 9.000000, -1, -1);
	CreateDynamicObject(1454, -316.998596, -1433.597900, 14.697500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -317.024689, -1427.070557, 14.417500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -317.004700, -1420.756714, 14.217500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -322.188995, -1433.543823, 14.857500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -322.188995, -1427.070557, 14.397500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -322.188995, -1420.757935, 14.257500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -327.433411, -1433.523804, 15.017500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -327.432007, -1427.090576, 14.617500, -1.858400, 100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1454, -327.432709, -1420.757935, 14.277500, -1.858400, -100.000000, 3.141600, -1, -1);
	CreateDynamicObject(1297, -332.712494, -1434.803467, 17.892000, 0.000000, -4.000000, 900.000000, -1, -1);
	CreateDynamicObject(1297, -330.691589, -1414.315308, 16.532000, 0.000000, -4.000000, 900.000000, -1, -1);
	CreateDynamicObject(19865, -361.978638, -1456.423950, 24.599001, 0.000000, 0.000000, 2.000000, -1, -1);
	CreateDynamicObject(19865, -362.152985, -1451.789185, 24.599001, 0.000000, 0.000000, 2.000000, -1, -1);
	CreateDynamicObject(19865, -364.376312, -1458.921265, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19865, -362.326904, -1446.989868, 24.599001, 0.000000, 0.000000, 2.000000, -1, -1);
	CreateDynamicObject(19865, -362.424377, -1442.135498, 24.599001, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19966, -362.303009, -1439.540649, 24.521900, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1215, -362.475800, -1439.276489, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1438, -365.061493, -1450.025146, 24.720301, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1370, -364.355896, -1445.339844, 25.219999, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1370, -364.355896, -1444.437256, 25.219999, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1438, -365.061493, -1447.123413, 24.720301, 0.000000, 0.000000, -90.000000, -1, -1);
	CreateDynamicObject(1370, -364.355896, -1443.449585, 25.219999, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(12921, -361.877197, -1432.390747, 27.644800, 0.000000, 0.000000, 85.000000, -1, -1);
	CreateDynamicObject(19975, -364.915802, -1442.780518, 24.179800, 0.000000, 0.000000, 900.000000, -1, -1);
	CreateDynamicObject(1215, -367.584106, -1458.745483, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19975, -360.888367, -1424.511719, 24.259800, 0.000000, 0.000000, 80.000000, -1, -1);
	CreateDynamicObject(1215, -361.344513, -1425.570679, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -360.848724, -1422.718384, 24.599001, 0.000000, 0.000000, -9.000000, -1, -1);
	CreateDynamicObject(19865, -360.093658, -1417.937256, 24.599001, 0.000000, 0.000000, -9.000000, -1, -1);
	CreateDynamicObject(19865, -369.233521, -1458.920166, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3425, -367.776093, -1455.882446, 35.729698, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -359.326813, -1413.179443, 24.599001, 0.000000, 0.000000, -9.000000, -1, -1);
	CreateDynamicObject(17063, -369.689514, -1447.334839, 24.651300, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1215, -370.461670, -1451.391113, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -361.433777, -1410.712524, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1215, -370.468597, -1443.138916, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1462, -372.995453, -1452.269287, 24.682400, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -374.068268, -1458.938965, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(2901, -372.697693, -1449.076416, 25.047400, 0.000000, 20.000000, 0.000000, -1, -1);
	CreateDynamicObject(2901, -373.409302, -1449.798218, 25.607401, 0.000000, 20.000000, 0.000000, -1, -1);
	CreateDynamicObject(2901, -372.773285, -1445.328369, 25.047400, 0.000000, 20.000000, 0.000000, -1, -1);
	CreateDynamicObject(1458, -373.763336, -1449.934204, 24.958900, 0.000000, 0.000000, -50.000000, -1, -1);
	CreateDynamicObject(13367, -364.585541, -1414.416138, 34.997898, 0.000000, 0.000000, -4.000000, -1, -1);
	CreateDynamicObject(2901, -373.383911, -1446.136963, 25.567400, 0.000000, 20.000000, 0.000000, -1, -1);
	CreateDynamicObject(1453, -373.150513, -1443.387695, 25.239700, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1458, -373.853058, -1446.322510, 24.958900, 0.000000, 0.000000, -50.000000, -1, -1);
	CreateDynamicObject(1453, -374.102112, -1443.387695, 25.239700, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -366.330475, -1410.704224, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1415, -374.477692, -1442.307007, 24.775600, 0.000000, 0.000000, 180.000000, -1, -1);
	CreateDynamicObject(1453, -375.092499, -1443.387695, 25.239700, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -378.922394, -1458.945923, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19837, -370.507416, -1414.847046, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19838, -370.727539, -1415.020874, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19838, -370.822754, -1414.770264, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19833, -370.714905, -1414.265259, 24.721399, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19838, -371.019958, -1414.931519, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1215, -381.458008, -1458.745483, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -371.263489, -1410.718628, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19838, -372.987793, -1414.760986, 24.719200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19838, -373.025604, -1414.488403, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19838, -373.265808, -1414.686035, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19833, -373.090393, -1413.893921, 24.721399, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19837, -373.340393, -1414.401611, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -383.846252, -1458.950073, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19837, -375.004791, -1414.529663, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1215, -382.962006, -1450.236938, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1462, -382.827911, -1449.085693, 24.702400, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19838, -375.254456, -1414.288940, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19838, -375.342133, -1414.541016, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19833, -375.295197, -1413.773438, 24.721399, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19838, -375.514893, -1414.449341, 24.699200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -376.105011, -1410.724121, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(3374, -384.235687, -1456.880371, 26.155899, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(3374, -384.235687, -1452.442627, 26.155899, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1497, -383.376312, -1439.643555, 25.318501, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19865, -386.321320, -1456.448486, 24.599001, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1462, -382.827911, -1430.726685, 24.742399, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19865, -386.331207, -1451.628662, 24.599001, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1215, -383.134705, -1428.766968, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1370, -383.120209, -1423.885864, 25.216200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1370, -383.120209, -1422.877319, 25.216200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1370, -383.120209, -1421.817261, 25.216200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1370, -383.120209, -1420.710815, 25.216200, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -380.975800, -1410.715576, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1415, -385.887085, -1418.596313, 24.795601, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(1215, -386.167877, -1417.352783, 25.139799, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(1451, -385.564301, -1412.184814, 25.468201, 0.000000, 0.000000, 60.000000, -1, -1);
	CreateDynamicObject(19865, -385.641174, -1410.716309, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19865, -390.467102, -1410.718994, 24.599001, 0.000000, 0.000000, 90.000000, -1, -1);
	CreateDynamicObject(19865, -392.936859, -1418.123901, 24.599001, 0.000000, 0.000000, 0.000000, -1, -1);
	CreateDynamicObject(19865, -392.942596, -1413.205811, 24.599001, 0.000000, 0.000000, 0.000000, -1, -1);
	return 1;
}

public OnPlayerConnect(playerid)
{
	farmStatus[playerid] = false;
	farmCheck[playerid] = false;
	farmPlant[playerid] = false;
	farmTotal[playerid] = 0;
	farmAmount[playerid] = 0;
	
	RemoveBuildingForPlayer(playerid, 3276, -419.750000, -1412.976563, 23.125000, 0.250000);
	RemoveBuildingForPlayer(playerid, 17000, -406.914093, -1448.968750, 24.640600, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -378.773407, -1459.023438, 25.476601, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -384.234406, -1455.828125, 25.476601, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -396.804688, -1411.546875, 25.390600, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -408.562500, -1412.289063, 24.828100, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -368.781311, -1454.367188, 25.476601, 0.250000);
	RemoveBuildingForPlayer(playerid, 3425, -370.375000, -1446.968750, 35.953098, 0.250000);
	RemoveBuildingForPlayer(playerid, 17298, -366.671906, -1422.687500, 30.375000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -372.179688, -1434.609375, 25.515600, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -369.195313, -1434.609375, 25.515600, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -366.203094, -1434.609375, 25.437500, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -362.484406, -1446.125000, 25.476601, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -361.812500, -1407.539063, 25.476601, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -360.718811, -1435.257813, 24.898399, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -363.210907, -1434.609375, 25.398399, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -358.757813, -1423.820313, 24.750000, 0.250000);
	RemoveBuildingForPlayer(playerid, 3276, -356.859406, -1412.554688, 25.250000, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -333.695313, -1434.835938, 15.406300, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -328.968811, -1434.835938, 15.179700, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -323.382813, -1434.835938, 14.937500, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -315.843811, -1434.835938, 14.757800, 0.250000);
	RemoveBuildingForPlayer(playerid, 1454, -307.734406, -1434.835938, 14.171900, 0.250000);
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	if(pickupid == farmPickup)
	{
	    if(farmStatus[playerid] == false)
	    {
	        new randPos = random(3);
	        farmStatus[playerid] = true;
	        farmCheck[playerid] = true;
	       	farmTotal[playerid] = 0;
			farmAmount[playerid] = 0;
			if(randPos == 0)SetPlayerCheckpoint(playerid, -322.3227, -1426.0226, 14.8478, 3);
			else if(randPos == 1)SetPlayerCheckpoint(playerid, -327.4899, -1432.4751, 15.3421, 3);
			else SetPlayerCheckpoint(playerid, -327.5461, -1419.6224, 14.5832, 3);
	    }
	    else
	    {
   			RemovePlayerAttachedObject(playerid, 1);
			SetPlayerSpecialAction (playerid, SPECIAL_ACTION_NONE);
	        new str[60];
	        format(str, 60, "Tkven Gamoimushavet: %d$",farmAmount[playerid]);
			SendClientMessage(playerid, -1, str);
			farmAmount[playerid] = 0;
	        farmStatus[playerid] = false;
	        farmPlant[playerid] = false;
	        farmCheck[playerid] = false;
	        DisablePlayerCheckpoint(playerid);
	    }
	}
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	if(farmCheck[playerid] == true)
	{
		TogglePlayerControllable(playerid, false);
		farmCheck[playerid] = false;
		DisablePlayerCheckpoint(playerid);
		ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 1, 1, 1, 0, 0);
		SetTimerEx("FarmTimer", 9000, false, "d", playerid);
	}
	else if(farmPlant[playerid] == true)
	{
		RemovePlayerAttachedObject(playerid, 1);
		SetPlayerSpecialAction (playerid, SPECIAL_ACTION_NONE);
	    farmTotal[playerid] ++;
        farmPlant[playerid] = false;
        farmCheck[playerid] = true;
        ApplyAnimation(playerid, "CARRY", "PUTDWN", 4.1, 0, 1, 1, 0, 0, 1);
		farmAmount[playerid] += random(10000);
 		new randPos = random(3);
		if(randPos == 0)SetPlayerCheckpoint(playerid, -322.3227, -1426.0226, 14.8478, 3);
		else if(randPos == 1)SetPlayerCheckpoint(playerid, -327.4899, -1432.4751, 15.3421, 3);
		else SetPlayerCheckpoint(playerid, -327.5461, -1419.6224, 14.5832, 3);
	}
	return 1;
}

forward FarmTimer(playerid);
public FarmTimer(playerid)
{
	new randPos = random(2);
    TogglePlayerControllable(playerid, true);
    ClearAnimations(playerid);
    farmPlant[playerid] = true;
    farmCheck[playerid] = false;
    if(randPos == 0) SetPlayerCheckpoint(playerid, -371.5002, -1448.2938, 25.7266, 3);
    else SetPlayerCheckpoint(playerid, -371.8727, -1444.8202, 25.7266, 3);
	SetPlayerSpecialAction (playerid, SPECIAL_ACTION_CARRY);
	SetPlayerAttachedObject(playerid, 1 , 2901, 1,0.11,0.36,0.0,0.0,90.0);
	return 1;
}
