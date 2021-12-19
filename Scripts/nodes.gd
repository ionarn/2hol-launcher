tool
extends Control


# V A R I A B L E S

#var pop_popup_background = null
#var pop_wrong_directory = null
#
#var ld_login_data = null
#var ld_username = null
#var ld_key = null
#
#var sps_button = null
#var sps_popup = null
#var sps_spawn_seed = null
#var sps_note = null
#var sps_container = null
#var sps_scrollcontainer = null
#var sps_reset = null
#
#var resolution = null
#var resolution_dropdown = null
#var resolution_reset = null
#var resolution_le_x = null
#var resolution_multi = null
#var resolution_le_y = null

# F U N C T I O N S


#func get_registered_node(variable):
#	return self.variable



onready var pop_popup_background = finding_nodes('pop_popup_background')
onready var pop_wrong_directory = finding_nodes('pop_wrong_directory')

onready var title_bar = finding_nodes('tb_title_bar')
onready var version = finding_nodes('tb_version')
onready var bnr_label = finding_nodes('bnr_label')
onready var bnr_panel = finding_nodes('bnr_panel')

onready var nvp_ScrollContainer = finding_nodes('nvp_ScrollContainer')
onready var HSplitContainer = finding_nodes('HSplitContainer')
onready var VSplitContainer = finding_nodes('VSplitContainer')
onready var tab_root = finding_nodes('tab_root')

onready var mod_margin = finding_nodes('mod_margin')
onready var mod_groupbox = finding_nodes('mod_groupbox')
onready var gen_margin = finding_nodes('gen_margin')
onready var gen_groupbox = finding_nodes('gen_groupbox')
onready var accordion_menu = finding_nodes('accordion_menu')

onready var tabs_root = finding_nodes('tab_root')
onready var nav_basic_settings = finding_nodes('nvp_basic_settings')
onready var nav_advanced_button = finding_nodes('nvp_advanced')
onready var nav_advanced_container = finding_nodes('nvp_advanced_container')
onready var nav_arrow = finding_nodes('nvt_arrow')
onready var nav_info_button = finding_nodes('nvp_info')
onready var nav_info_container = finding_nodes('nvp_info_container')
onready var nav_commands_button = finding_nodes('nvp_change_log')

onready var ld_login_data = finding_nodes('ld_login_data')
onready var ld_username = finding_nodes('ld_username')
onready var ld_key = finding_nodes('ld_key')

onready var spawn_seed = finding_nodes('spawn_seed')
onready var sps_button = finding_nodes('sps_button')
onready var sps_popup = finding_nodes('sps_popup')
onready var sps_spawn_seed = finding_nodes('sps_spawn_seed')
onready var sps_note = finding_nodes('sps_note')
onready var sps_container = finding_nodes('sps_container')
onready var sps_scrollcontainer = finding_nodes('sps_scrollcontainer')
onready var sps_reset = finding_nodes('sps_reset')

#onready var nw_network_main_script = finding_nodes('nw_network_main_script')
onready var network = finding_nodes('nw_network_main_script')
onready var server_dropdown = finding_nodes('svr_button')
onready var server_reset = finding_nodes('svr_reset')
onready var address = finding_nodes('adr_url')
onready var port = finding_nodes('prt_port')
onready var server_add_item = finding_nodes('svr_add_item')
onready var server_remove_item = finding_nodes('svr_remove_item')
onready var server_name = finding_nodes('svr_server_name')
onready var nw_popup = finding_nodes('nw_popup')

onready var audio = finding_nodes('aud_audio_main_script')
onready var audio_checkbutton = finding_nodes('av1_checkbutton')
onready var audio_slider = finding_nodes('av2_slider')
onready var audio_label = finding_nodes('av2_label')
onready var audio_reset = finding_nodes('av2_reset')

onready var music_checkbutton = finding_nodes('mv1_checkbutton')
onready var music_slider = finding_nodes('mv2_slider')
onready var music_label = finding_nodes('mv2_label')
onready var music_reset = finding_nodes('mv2_reset')

onready var sound_checkbutton = finding_nodes('sfx1_checkbutton')
onready var sound_slider = finding_nodes('sfx2_slider')
onready var sound_label = finding_nodes('sfx2_label')
onready var sound_reset = finding_nodes('sfx2_reset')

onready var resolution = finding_nodes('res_resolution')
onready var resolution_label = finding_nodes('res_label')
onready var resolution_dropdown = finding_nodes('res_dropdown')
onready var resolution_reset = finding_nodes('res_reset')
onready var resolution_le_x = finding_nodes('res_horizontal')
onready var resolution_multi = finding_nodes('res_multiply')
onready var resolution_le_y = finding_nodes('res_vertical')

onready var fullscreen_checkbutton = finding_nodes('fs_checkbutton')
onready var fullscreen_reset = finding_nodes('fs_reset')

onready var mousepointer_dropdown = finding_nodes('mp_dropdown')
onready var mousepointer_reset = finding_nodes('mp_reset')

onready var vsync_checkbutton = finding_nodes('gcb_checkbutton')
onready var vsync_reset = finding_nodes('gcb_reset')

onready var auto_login = finding_nodes('ali_autologin')
onready var hard_to_quit = finding_nodes('htq_hard_to_quit')
onready var check_spelling = finding_nodes('csp_check_spelling')
onready var live_triggers = finding_nodes('ltr_live_triggers')
onready var tutorial_done = finding_nodes('tdn_tutorial_done')
onready var pause_on_minimize = finding_nodes('pom_pause_on_minimize')
onready var cursor_speed = finding_nodes('csp_cursor_speed')

onready var emotion_happy = finding_nodes('ehp_happy')
onready var emotion_mad = finding_nodes('emd_mad')
onready var emotion_angry = finding_nodes('eag_angry')
onready var emotion_sad = finding_nodes('esd_sad')
onready var emotion_devious = finding_nodes('edv_devious')
onready var emotion_joy = finding_nodes('ejy_joy')
onready var emotion_blush = finding_nodes('ebl_blush')
onready var emotion_hubba = finding_nodes('ehu_hubba')
onready var emotion_ill = finding_nodes('eil_ill')
onready var emotion_yoohoo = finding_nodes('eyo_yoohoo')
onready var emotion_hmph = finding_nodes('ehm_hmph')
onready var emotion_love = finding_nodes('elo_love')
onready var emotion_oreally = finding_nodes('eor_oreally')
onready var emotion_shock = finding_nodes('esk_shock')
onready var emotion_clown = finding_nodes('ecl_clown')
onready var emotion_pog = finding_nodes('epg_pog')
onready var emotion_cry = finding_nodes('ecr_cry')
onready var emotion_tongue = finding_nodes('etn_tongue')
onready var emotion_sleep = finding_nodes('esl_sleep')
onready var emotion_broke_love = finding_nodes('ebl_broke_love')
onready var emotion_eye_roll = finding_nodes('eer_eye_roll')
onready var emotion_erm = finding_nodes('erm_erm')
onready var emotion_please = finding_nodes('epl_please')
onready var emotion_cook = finding_nodes('eck_cook')
onready var emotion_smith = finding_nodes('esm_smith')
onready var emotion_miner = finding_nodes('emi_miner')
onready var emotion_farmer = finding_nodes('efa_farmer')
onready var emotion_tailor = finding_nodes('eta_tailor')
onready var emotion_hunter = finding_nodes('ehu_hunter')

onready var mod_selection_dropdown = finding_nodes('mse_dropdown')
onready var list_without_mods = finding_nodes('wio_without_mods')
onready var list_hetuw_mod = finding_nodes('hem_hetuw_mod')
onready var list_day_cycle_mod = finding_nodes('dcm_day_cycle_mod')
onready var htw_show_player_info = finding_nodes('htw_show_player_info')

#onready var node = finding_nodes('node')
#onready var node = finding_nodes('node')
#onready var node = finding_nodes('node')

###################################

func finding_nodes(node_name):
	return get_tree().get_root().find_node(node_name, true, false)
