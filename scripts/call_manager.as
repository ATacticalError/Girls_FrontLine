#include "tracker.as"
#include "helpers.as"
#include "log.as"
#include "query_helpers.as"

class CallManager : Tracker {
  protected Metagame@ m_metagame;

  CallManager(Metagame@ metagame) {
    @m_metagame = @metagame;
  }

  protected void handleCallRequestEvent(const XmlElement@ event) {
    // Hey we got a call!

    // character_id
    // call_id
    // call_key
    // target_position
    // player_id

    // Check call key
    if (event.getStringAttribute("call_key") == "test_command.call") {
      // spawnPerpendicularLine(event, number, instance_class, instance_key, height)
      spawnPerpendicularLine(event, 40, "vehicle", "jeep.vehicle", 20.0);
    }
  }

  void spawnPerpendicularLine(const XmlElement@ event, int number, string instanceClass, string instanceKey, float height) {
    // Get the info we need
    int characterId = event.getIntAttribute("character_id");
    string senderPosString = getCharacterInfo(m_metagame, characterId).getStringAttribute("position");
    Vector3 senderPos = stringToVector3(senderPosString);

    Vector3 targetPos = stringToVector3(event.getStringAttribute("target_position"));

    // Find the line perpendicular to caller-target
    Vector3 sightLine = senderPos.subtract(targetPos);

    // Get x and z coords
    float sx = sightLine.get_opIndex(0);
    float sz = sightLine.get_opIndex(2);

    // Flip x and z coords, make new z negative
    // Add height to y while we're at it
    Vector3 perpendicularLine = Vector3(sz, sightLine.get_opIndex(1) + height, -sx);

    _log("sightLine: " + sightLine.toString());

    for (int i = 0; i < number; i++) {
      int j = i - 20;
      Vector3 newPos = targetPos.subtract(perpendicularLine.scale(j * 0.05));

      string c = """<command class='create_instance'
        faction_id='0'
        instance_class='""" + instanceClass + """'
        instance_key='""" + instanceKey + """'
        position='""" + newPos.toString() + """'
        offset='0 0 0' />""";
      m_metagame.getComms().send(c);
    }

  }

  bool hasEnded() const {
		// always on
		return false;
	}

	// --------------------------------------------
	bool hasStarted() const {
		// always on
		return true;
	}
}