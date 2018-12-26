#include "stage_configurator_campaign.as"

// ------------------------------------------------------------------------------------------------
class MyStageConfigurator : StageConfiguratorCampaign {
	// ------------------------------------------------------------------------------------------------
	MyStageConfigurator(GameModeInvasion@ metagame, MapRotatorCampaign@ mapRotator) {
		super(metagame, mapRotator);
	}

	// ------------------------------------------------------------------------------------------------
	const array<FactionConfig@>@ getAvailableFactionConfigs() const {
		array<FactionConfig@> availableFactionConfigs;

		// --------------------------------
		// TODO: define 3 faction configs here
		// - "green.xml" faction specification filename
		// - "Greenbelts" faction name, usually same as the one in the file
		// - "0.1 0.5 0" color used for faction in the world view
		// - "green_boss.xml" faction specification filename used in the final missions; 
		//   can be same as the regular faction filename
		// --------------------------------


		availableFactionConfigs.push_back(FactionConfig(-1, "green.xml", "U.S.F. M.C.", "0.9 0 0.9", "green_boss.xml"));
		availableFactionConfigs.push_back(FactionConfig(-1, "grey.xml", "G & K P.M.C.", "0.9 0.6 0", "grey_boss.xml"));
		availableFactionConfigs.push_back(FactionConfig(-1, "brown.xml", "U.S.S.R. Army", "0.2 0.2 0.8", "brown_boss.xml"));

		return availableFactionConfigs;
	}
}
