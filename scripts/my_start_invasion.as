#include "path://media/packages/vanilla/scripts"
#include "path://media/packages/Girls_FrontLine/scripts"
#include "my_gamemode_invasion.as"

void main(dictionary@ inputData) {
	XmlElement inputSettings(inputData);

	UserSettings settings;
	
	settings.m_factionChoice = 1;
    settings.m_factionChoice = 1;
    settings.m_playerAiCompensationFactor = 1.1;
    settings.m_enemyAiAccuracyFactor = 0.95;
    settings.m_playerAiReduction = 1.0;
    settings.m_teamKillPenaltyEnabled = true;
    settings.m_completionVarianceEnabled = false;
    settings.m_journalEnabled = false; //todo
	settings.m_fellowDisableEnemySpawnpointsSoldierCountOffset = 1;

	settings.m_xpFactor = 2;
	settings.m_rpFactor = 1.5;
	
	array<string> overlays = {
			"media/packages/Girls_FrontLine"
	};
	settings.m_overlayPaths = overlays;
	
	// TODO: setup settings
    settings.m_startServerCommand = """
<command class='start_server'
        server_name='GFInvasionCN'
        server_port='1270'
        comment='Girls Frontline mod required. QQ qun: 201182024'
        url='https://jq.qq.com/?_wv=1027&k=5zsgLgj'
        register_in_serverlist='1'
        mode='COOP'
        persistency='forever'
        max_players='16'>
        <client_faction id='0' />
</command>
""";

	_setupLog(inputSettings);

	settings.print();

	MyGameMode metagame(settings);

	metagame.init();
	metagame.run();
	metagame.uninit();

	_log("ending execution");
}

