#include "item_delivery_configurator_invasion.as"

// ------------------------------------------------------------------------------------------------
class MyItemDeliveryConfigurator : ItemDeliveryConfiguratorInvasion {
	// ------------------------------------------------------------------------------------------------
	MyItemDeliveryConfigurator(GameModeInvasion@ metagame) {
		super(metagame);
	}

	// --------------------------------------------
	array<Resource@>@ getUnlockWeaponList() const {
		array<Resource@> list;

		// --------------------------------------------
		// TODO:
		// - replace these with suitable items for cargo truck and briefcase delivery rewards
		// --------------------------------------------

	//	list.push_back(Resource("Black_Widow.weapon", "weapon"));
	//	list.push_back(Resource("M-9_Tempest.weapon", "weapon"));
	//	list.push_back(Resource("M-6_Carnifex.weapon", "weapon"));
	//	list.push_back(Resource("M-99_Saber.weapon", "weapon"));
	//	list.push_back(Resource("M-90_Indra.weapon", "weapon"));
	//	list.push_back(Resource("M-15_Vindicator.weapon", "weapon"));
	//	list.push_back(Resource("M-27_Scimitar.weapon", "weapon"));
	//	list.push_back(Resource("Venom_Shotgun.weapon", "weapon"));
	//	list.push_back(Resource("Striker_Assault_Rifle.weapon", "weapon"));
	//	list.push_back(Resource("M-100_Grenade_Launcher.weapon", "weapon"));
	//	list.push_back(Resource("Executioner_Pistol.weapon", "weapon"));
	//	list.push_back(Resource("minig_resource.weapon", "weapon"));
	//	list.push_back(Resource("M-920_Cain.weapon", "weapon"));
	//	list.push_back(Resource("tow_resource.weapon", "weapon")); 
         
		return list;
	}

	// --------------------------------------------
	array<Resource@>@ getDeliverablesList() const {
		array<Resource@> list;

	//	// --------------------------------------------
	//	// TODO:
	//	// - replace these with what we want to track as delivered to armory, with intention of unlocking that same item
	//	// --------------------------------------------
//
	//	// alliance weapons
	//	list.push_back(Resource("M-5_Phalanx.weapon", "weapon"));
	//	list.push_back(Resource("N7_Hurricane.weapon", "weapon"));
	//	list.push_back(Resource("M-8_Avenger.weapon", "weapon"));
	//	list.push_back(Resource("N7_Typhoon.weapon", "weapon"));
	//	list.push_back(Resource("M-23_Katana.weapon", "weapon"));
	//	list.push_back(Resource("M-92_Mantis.weapon", "weapon"));
	//	list.push_back(Resource("M-560_Hydra.weapon", "weapon"));
	//	list.push_back(Resource("M-7_Lancer.weapon", "weapon"));     
//
	//	// cerberus weapons
	//	list.push_back(Resource("M-358_Talon.weapon", "weapon"));
	//	list.push_back(Resource("M-25_Hornet.weapon", "weapon"));
	//	list.push_back(Resource("M-96_Mattock.weapon", "weapon"));
	//	list.push_back(Resource("M-76_Revenant.weapon", "weapon"));
	//	list.push_back(Resource("M-22_Eviscerator.weapon", "weapon"));
	//	list.push_back(Resource("M-13_Raptor.weapon", "weapon"));
	//	list.push_back(Resource("ML-77_Missile_Launcher.weapon", "weapon"));
	//	list.push_back(Resource("Cerberus_Harrier.weapon", "weapon"));     
//
	//	// geth weapons
	//	list.push_back(Resource("Arc_Pistol.weapon", "weapon"));
	//	list.push_back(Resource("Geth_Plasma_SMG.weapon", "weapon"));
	//	list.push_back(Resource("Geth_Pulse_Rifle.weapon", "weapon"));
	//	list.push_back(Resource("Geth_Spitfire.weapon", "weapon"));
	//	list.push_back(Resource("Geth_Plasma_Shotgun.weapon", "weapon"));
	//	list.push_back(Resource("Javelin.weapon", "weapon"));
	//	list.push_back(Resource("Reaper_Blackstar.weapon", "weapon")); 
	//	list.push_back(Resource("Phaeston.weapon", "weapon"));     

		return list;
	}
}
