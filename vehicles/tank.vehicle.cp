<?xml version="1.0" encoding="utf-8"?>
<vehicle file="vehicle_base.vehicle" name="M1A2 Abrams 120mm/L44" key="tank.vehicle" respawn_time="1800" map_view_atlas_index="5" minimum_fill_requirement="1.0" allow_character_leave_request="0">
	<tag name="metal_heavy" />
	<tag name="tank" />
	<tag name="vehicle" /> 
 
	<tire_set offset="1.8 0.0 +3" radius="0.52" />
	<tire_set offset="1.8 0.0 -3" radius="0.52" />

	<control max_speed="5.0" acceleration="13.5" max_reverse_speed="4.0" max_rotation="0.0" max_water_depth="1.4" steer_smoothening="0.0" tracked="1" gears="1" />

	<physics max_health="10.0" mass="200.0" extent="5.0 0.0 7" offset="0 0.0 0" top_offset="0 4.0 0" collision_model_pos="0 1.0 -0.09" collision_model_extent="4.5 2.0 10.0" visual_offset="0 0.6 0.0" /> 

	<!-- one weapon per turret so that only one soldier controls the turret orientation -->
	<!-- similarly, a controllable turret can only exist if it has a weapon -->
	<!-- turrets may have sub-turrets, which may have more weapons, in the future -->
	<turret offset="0 3.7 0.0" weapon_key="tank_cannon.weapon" weapon_offset="0.0 -1.1 3.8" weapon_recoil="0.15" physics_recoil="0.4" max_rotation_step="0.00005" />
	<turret offset="0 3.0 0.0" weapon_key="remote_mg.weapon" weapon_offset="0.0 0.4 0.5" weapon_recoil="0.0" physics_recoil="0.0" max_rotation_step="0.0001"/>
	<turret offset="0 3.7 0.0" weapon_key="tank_coax_mg.weapon" weapon_offset="-0.4 -1.25 2.5" weapon_recoil="0.0" physics_recoil="0.0" max_rotation_step="0.00005"/>	

	<!-- 
	<turret offset="0 1.25 0.60" weapon_key="tank_spas_front.weapon" weapon_offset="0.0 +0.0 0.0" weapon_recoil="0.0" physics_recoil="0.0" max_rotation_step="0.0004" />
	<turret offset="0 1.5 0.0" weapon_key="tank_spas_left.weapon" weapon_offset="0.0 +0.0 0.0" weapon_recoil="0.0" physics_recoil="0.0" max_rotation_step="0.0004" />
	<turret offset="0 1.5 0.0" weapon_key="tank_spas_right.weapon" weapon_offset="0.0 +0.0 0.0" weapon_recoil="0.0" physics_recoil="0.0" max_rotation_step="0.0004" />
	-->

	<visual class="chassis" mesh_filename="tank_body.mesh" texture_filename="tank_body.png" max_tilt="0.06" />
	<visual class="chassis" key="broken" mesh_filename="tank_broken.mesh" texture_filename="tank_body.png" />
	<visual class="turret" turret_index="0" mesh_filename="tank_turret.mesh" texture_filename="tank_turret.png" />
	<visual class="turret" turret_index="0" key="broken" mesh_filename="tank_turret_broken.mesh" texture_filename="tank_turret.png" /> 
	<visual class="turret" turret_index="1" mesh_filename="remote_mg.mesh" texture_filename="tank_turret.png" />
	<visual class="turret" turret_index="1" key="broken" mesh_filename="remote_mg.mesh" texture_filename="tank_turret.png" />	
	<visual class="turret" turret_index="2" mesh_filename="" texture_filename="" />
	
	<visual class="track" mesh_filename="tank_track.mesh" offset="-1.6 0.5 0.2" >
		<part texture_filename="tank_track.png" texture_animation="translate" tire_binding="0" />
		<part texture_filename="tank_wheel.png" texture_animation="rotate" tire_binding="0" />
	</visual>

	<visual class="track" mesh_filename="tank_track.mesh" offset="+1.6 0.5 0.2" >
		<part texture_filename="tank_track.png" texture_animation="translate" tire_binding="1" />
		<part texture_filename="tank_wheel.png" texture_animation="rotate" tire_binding="1" />
	</visual>

	<character_slot type="driver" position="1.5 0.0 2" rotation="0" exit_rotation="1.57" hiding="1" animation_id="36" />
	<character_slot type="gunner" position="-1.5 0.0 2" rotation="0" exit_rotation="-1.57" hiding="1" animation_id="37">
		<turret index="0" />	<turret index="2" />
	</character_slot>

	<character_slot type="gunner" enter_position="0 0.5 -5.0" seat_position="0 0.0 0" rotation="0" exit_rotation="1.57" hiding="1" animation_key="tank mg still">
		<turret index="1" />
	</character_slot>

	<!-- sound handling -->
	<rev_sound filename="tank_rev0.wav" low_pitch="0.5" high_pitch="0.7" low_rev="0.0" high_rev="1.0" volume="0.9" />
	<rev_sound filename="tank_rev0_b.wav" low_pitch="0.6" high_pitch="0.8" low_rev="0.0" high_rev="1.0" volume="1.5" /> 
	<rev_sound filename="tank_rev1.wav" low_pitch="0.2" high_pitch="0.5" low_rev="0.4" high_rev="0.7" volume="1.5" />
	<rev_sound filename="tank_tracks.wav" low_pitch="0.4" high_pitch="0.7" low_rev="0.1" high_rev="1.0" volume="1.5" />  
	<rev_sound filename="tank_rev2.wav" low_pitch="0.3" high_pitch="0.5" low_rev="0.9" high_rev="1.0" volume="0.9" />

	<sound key="squeal" filename="tire_squeal.wav" />
	<sound key="ignition" filename="truck_ignition.wav" />
	<sound key="hit" filename="car_hit1.wav" />
	<sound key="hit" filename="car_hit2.wav" />
	<sound key="destroy" filename="vehicle_explosion_1.wav" />   
	<sound key="cleanup" filename="vehicle_explosion_1.wav" />    

	<sound key="turret_rotation" filename="turret_rotation1.wav" />
	<sound key="turret_rotation" filename="turret_rotation2.wav" />
  
	<!-- <effect event_key="drive_chassis" ref="xPropulsion" offset="0.0 2.0 -3.6" /> -->
	<effect event_key="drive" type="splat_map" surface_tag="dirt" size="1.0" atlas_index="2" layer="1" />
	<effect event_key="drive" type="particle" key="terrain" surface_tag="dirt" ref="Burst" use_surface_color="1" />
  
  	<effect event_key="health" value="3.33" ref="xFireSmoke2" offset="0.0 2.4 -3.3" />  
  	<effect event_key="destroyed" ref="xFireSmoke2" offset="0.0 3.0 0" />
  	<effect event_key="destroyed" ref="xFireSpark" offset="0.0 3.0 0" />
        <effect event_key="destroyed" ref="xFireSmoke" offset="0.0 3.0 0" />
  	<effect event_key="destroyed" ref="xSmallFireRepeat" offset="0.0 4.5 0" />
        <effect event_key="destroy" key="other" ref="woosh" post_processing="0" shadow="0" />   
        <effect event_key="cleanup" key="other" ref="woosh" post_processing="0" shadow="0" />  
       
	<event>
		<trigger class="destroy" />
  	<result class="spawn" instance_class="visual_item" instance_key="burning_piece_armor1.visual_item" min_amount="1" max_amount="3" offset="0 3.0 0" position_spread="1.5 1.5" direction_spread="0.15 0.3" />
	</event>
	<event>
		<trigger class="destroy" />  	
    <result class="spawn" instance_class="visual_item" instance_key="burning_piece_armor2.visual_item" min_amount="0" max_amount="1" offset="0 3.0 0" position_spread="1.5 1.5" direction_spread="0.10 0.15" />
	</event>
  <event>
		<trigger class="destroy" />		
    <result class="spawn" instance_class="visual_item" instance_key="burning_piece_armor3.visual_item" min_amount="1" max_amount="2" offset="0 3.0 0" position_spread="1.5 1.5" direction_spread="0.12 0.20" />
	</event>
  <event>
		<trigger class="destroy" />		
    <result class="spawn" instance_class="visual_item" instance_key="burning_piece_armor4.visual_item" min_amount="1" max_amount="2" offset="0 3.0 0" position_spread="1.5 1.5" direction_spread="0.1 0.25" />
	</event>    

  <event>
		<trigger class="cleanup" />		
    <result class="spawn" instance_class="visual_item" instance_key="burning_piece_cleanup.visual_item" min_amount="20" max_amount="30" offset="0 2.0 0" position_spread="1.5 1.5" direction_spread="0.1 0.1" /> 
  </event>  
  
 	<event>
		<trigger class="cleanup" />
    <result class="spawn" instance_class="projectile" instance_key="debri_stun" min_amount="1" max_amount="1" offset="0 3.0 0" position_spread="0.0 0.0" direction_spread="0.0 0.0" />
  </event>     
  
</vehicle>