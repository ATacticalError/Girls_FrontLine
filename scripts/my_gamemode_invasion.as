#include "gamemode_invasion.as"
#include "stage_configurator_invasion.as"

// --------------------------------------------
class MyGameMode : GameModeInvasion {
	// --------------------------------------------
	MyGameMode(UserSettings@ settings) {
		super(settings);
	}

	// --------------------------------------------
	protected void setupMapRotator() {
		@m_mapRotator = MapRotatorInvasion(this);
		StageConfiguratorInvasion configurator(this, m_mapRotator);
	}
}



