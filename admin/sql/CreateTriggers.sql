\set ON_ERROR_STOP 1
BEGIN;

CREATE TRIGGER a_ins_artist AFTER INSERT ON artist
    FOR EACH ROW EXECUTE PROCEDURE a_ins_artist();

CREATE TRIGGER b_upd_artist BEFORE UPDATE ON artist
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_del_artist_special BEFORE DELETE ON artist
    FOR EACH ROW EXECUTE PROCEDURE deny_special_purpose_artist_deletion();

CREATE TRIGGER end_date_implies_ended BEFORE UPDATE OR INSERT ON artist
    FOR EACH ROW EXECUTE PROCEDURE end_date_implies_ended();

CREATE TRIGGER b_upd_artist_alias BEFORE UPDATE ON artist_alias
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER replace_old_sub_on_add BEFORE INSERT ON editor_subscribe_collection
    FOR EACH ROW EXECUTE PROCEDURE replace_old_sub_on_add();

CREATE TRIGGER del_collection_sub_on_delete BEFORE DELETE ON editor_collection
    FOR EACH ROW EXECUTE PROCEDURE del_collection_sub_on_delete();

CREATE TRIGGER del_collection_sub_on_private BEFORE UPDATE ON editor_collection
    FOR EACH ROW EXECUTE PROCEDURE del_collection_sub_on_private();

CREATE TRIGGER unique_primary_for_locale BEFORE UPDATE OR INSERT ON artist_alias
    FOR EACH ROW EXECUTE PROCEDURE unique_primary_artist_alias();

CREATE TRIGGER search_hint BEFORE UPDATE OR INSERT ON artist_alias
    FOR EACH ROW EXECUTE PROCEDURE simplify_search_hints(3);

CREATE TRIGGER b_upd_artist_tag BEFORE UPDATE ON artist_tag
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_editor BEFORE UPDATE ON editor
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_editor AFTER INSERT ON editor
    FOR EACH ROW EXECUTE PROCEDURE a_ins_editor();

CREATE TRIGGER b_upd_l_artist_artist BEFORE UPDATE ON l_artist_artist
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_artist_label BEFORE UPDATE ON l_artist_label
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_artist_recording BEFORE UPDATE ON l_artist_recording
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_artist_release BEFORE UPDATE ON l_artist_release
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_artist_release_group BEFORE UPDATE ON l_artist_release_group
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_artist_url BEFORE UPDATE ON l_artist_url
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_artist_work BEFORE UPDATE ON l_artist_work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_label_label BEFORE UPDATE ON l_label_label
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_label_recording BEFORE UPDATE ON l_label_recording
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_label_release BEFORE UPDATE ON l_label_release
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_label_release_group BEFORE UPDATE ON l_label_release_group
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_label_url BEFORE UPDATE ON l_label_url
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_label_work BEFORE UPDATE ON l_label_work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_recording_recording BEFORE UPDATE ON l_recording_recording
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_recording_release BEFORE UPDATE ON l_recording_release
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_recording_release_group BEFORE UPDATE ON l_recording_release_group
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_recording_url BEFORE UPDATE ON l_recording_url
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_recording_work BEFORE UPDATE ON l_recording_work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_release_release BEFORE UPDATE ON l_release_release
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_release_release_group BEFORE UPDATE ON l_release_release_group
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_release_url BEFORE UPDATE ON l_release_url
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_release_work BEFORE UPDATE ON l_release_work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_release_group_release_group BEFORE UPDATE ON l_release_group_release_group
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_release_group_url BEFORE UPDATE ON l_release_group_url
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_release_group_work BEFORE UPDATE ON l_release_group_work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_url_url BEFORE UPDATE ON l_url_url
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_url_work BEFORE UPDATE ON l_url_work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_l_work_work BEFORE UPDATE ON l_work_work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_label AFTER INSERT ON label
    FOR EACH ROW EXECUTE PROCEDURE a_ins_label();

CREATE TRIGGER b_del_label_special BEFORE DELETE ON label
    FOR EACH ROW EXECUTE PROCEDURE deny_special_purpose_label_deletion();

CREATE TRIGGER b_upd_label BEFORE UPDATE ON label
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER end_date_implies_ended BEFORE UPDATE OR INSERT ON label
    FOR EACH ROW EXECUTE PROCEDURE end_date_implies_ended();

CREATE TRIGGER b_upd_label_alias BEFORE UPDATE ON label_alias
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER unique_primary_for_locale BEFORE UPDATE OR INSERT ON label_alias
    FOR EACH ROW EXECUTE PROCEDURE unique_primary_label_alias();

CREATE TRIGGER search_hint BEFORE UPDATE OR INSERT ON label_alias
    FOR EACH ROW EXECUTE PROCEDURE simplify_search_hints(2);

CREATE TRIGGER b_upd_label_tag BEFORE UPDATE ON label_tag
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER end_date_implies_ended BEFORE UPDATE OR INSERT ON link
    FOR EACH ROW EXECUTE PROCEDURE end_date_implies_ended();

CREATE TRIGGER b_upd_link_attribute BEFORE UPDATE OR INSERT ON link_attribute
    FOR EACH ROW EXECUTE PROCEDURE prevent_invalid_attributes();

CREATE TRIGGER b_upd_link_attribute_type BEFORE UPDATE ON link_attribute_type
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_link_type BEFORE UPDATE ON link_type
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_link_type_attribute_type BEFORE UPDATE ON link_type_attribute_type
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_medium BEFORE UPDATE ON medium
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_medium_cdtoc BEFORE UPDATE ON medium_cdtoc
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_recording AFTER INSERT ON recording
    FOR EACH ROW EXECUTE PROCEDURE a_ins_recording();

CREATE TRIGGER a_upd_recording AFTER UPDATE ON recording
    FOR EACH ROW EXECUTE PROCEDURE a_upd_recording();

CREATE TRIGGER a_del_recording AFTER DELETE ON recording
    FOR EACH ROW EXECUTE PROCEDURE a_del_recording();

CREATE TRIGGER b_upd_recording BEFORE UPDATE ON recording
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_recording_tag BEFORE UPDATE ON recording_tag
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_release AFTER INSERT ON release
    FOR EACH ROW EXECUTE PROCEDURE a_ins_release();

CREATE TRIGGER a_upd_release AFTER UPDATE ON release
    FOR EACH ROW EXECUTE PROCEDURE a_upd_release();

CREATE TRIGGER a_del_release AFTER DELETE ON release
    FOR EACH ROW EXECUTE PROCEDURE a_del_release();

CREATE TRIGGER b_upd_release BEFORE UPDATE ON release
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_release_event AFTER INSERT ON release_country
    FOR EACH ROW EXECUTE PROCEDURE a_ins_release_event();

CREATE TRIGGER a_upd_release_event AFTER UPDATE ON release_country
    FOR EACH ROW EXECUTE PROCEDURE a_upd_release_event();

CREATE TRIGGER a_del_release_event AFTER DELETE ON release_country
    FOR EACH ROW EXECUTE PROCEDURE a_del_release_event();

CREATE TRIGGER a_ins_release_event AFTER INSERT ON release_unknown_country
    FOR EACH ROW EXECUTE PROCEDURE a_ins_release_event();

CREATE TRIGGER a_upd_release_event AFTER UPDATE ON release_unknown_country
    FOR EACH ROW EXECUTE PROCEDURE a_upd_release_event();

CREATE TRIGGER a_del_release_event AFTER DELETE ON release_unknown_country
    FOR EACH ROW EXECUTE PROCEDURE a_del_release_event();

CREATE TRIGGER b_upd_release_label BEFORE UPDATE ON release_label
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_release_group AFTER INSERT ON release_group
    FOR EACH ROW EXECUTE PROCEDURE a_ins_release_group();

CREATE TRIGGER a_upd_release_group AFTER UPDATE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE a_upd_release_group();

CREATE TRIGGER a_del_release_group AFTER DELETE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE a_del_release_group();

CREATE TRIGGER b_upd_release_group BEFORE UPDATE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_release_group_tag BEFORE UPDATE ON release_group_tag
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_tag_relation BEFORE UPDATE ON tag_relation
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_track AFTER INSERT ON track
    FOR EACH ROW EXECUTE PROCEDURE a_ins_track();

CREATE TRIGGER a_upd_track AFTER UPDATE ON track
    FOR EACH ROW EXECUTE PROCEDURE a_upd_track();

CREATE TRIGGER a_del_track AFTER DELETE ON track
    FOR EACH ROW EXECUTE PROCEDURE a_del_track();

CREATE TRIGGER b_upd_track BEFORE UPDATE ON track
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE CONSTRAINT TRIGGER remove_orphaned_tracks
    AFTER DELETE OR UPDATE ON track DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE delete_orphaned_recordings();

CREATE TRIGGER b_upd_tracklist BEFORE UPDATE ON tracklist
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_url BEFORE UPDATE ON url
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_ins_work AFTER INSERT ON work
    FOR EACH ROW EXECUTE PROCEDURE a_ins_work();

CREATE TRIGGER b_upd_work BEFORE UPDATE ON work
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER b_upd_work_alias BEFORE UPDATE ON work_alias
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER unique_primary_for_locale BEFORE UPDATE OR INSERT ON work_alias
    FOR EACH ROW EXECUTE PROCEDURE unique_primary_work_alias();

CREATE TRIGGER search_hint BEFORE UPDATE OR INSERT ON work_alias
    FOR EACH ROW EXECUTE PROCEDURE simplify_search_hints(2);

CREATE TRIGGER b_upd_work_tag BEFORE UPDATE ON work_tag
    FOR EACH ROW EXECUTE PROCEDURE b_upd_last_updated_table();

CREATE TRIGGER a_upd_edit AFTER UPDATE ON edit
    FOR EACH ROW EXECUTE PROCEDURE a_upd_edit();

CREATE TRIGGER a_ins_edit_artist BEFORE INSERT ON edit_artist
    FOR EACH ROW EXECUTE PROCEDURE b_ins_edit_materialize_status();

CREATE TRIGGER a_ins_edit_artist BEFORE INSERT ON edit_label
    FOR EACH ROW EXECUTE PROCEDURE b_ins_edit_materialize_status();

--------------------------------------------------------------------------------
CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_artist_artist DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_artist_label DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_artist_recording DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_artist_release DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_artist_release_group DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_artist_url DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_artist_work DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_label_label DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_label_recording DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_label_release DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_label_release_group DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_label_url DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_label_work DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_recording_recording DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_recording_release DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_recording_release_group DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_recording_url DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_recording_work DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_release_release DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_release_release_group DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_release_url DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_release_work DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_release_group_release_group DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_release_group_url DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_release_group_work DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_url_url DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_url_work DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();

CREATE CONSTRAINT TRIGGER remove_unused_links
    AFTER DELETE OR UPDATE ON l_work_work DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW EXECUTE PROCEDURE remove_unused_links();
--------------------------------------------------------------------------------

CREATE CONSTRAINT TRIGGER url_gc_a_upd_l_artist_url
AFTER UPDATE ON l_artist_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_del_l_artist_url
AFTER DELETE ON l_artist_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_upd_l_label_url
AFTER UPDATE ON l_label_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_del_l_label_url
AFTER DELETE ON l_label_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_upd_l_recording_url
AFTER UPDATE ON l_recording_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_del_l_recording_url
AFTER DELETE ON l_recording_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_upd_l_release_url
AFTER UPDATE ON l_release_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_del_l_release_url
AFTER DELETE ON l_release_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_upd_l_release_group_url
AFTER UPDATE ON l_release_group_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_del_l_release_group_url
AFTER DELETE ON l_release_group_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_upd_l_url_url
AFTER UPDATE ON l_url_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_del_l_url_url
AFTER DELETE ON l_url_url DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_upd_l_url_work
AFTER UPDATE ON l_url_work DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

CREATE CONSTRAINT TRIGGER url_gc_a_del_l_url_work
AFTER DELETE ON l_url_work DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE remove_unused_url();

--------------------------------------------------------------------------------
CREATE CONSTRAINT TRIGGER delete_unused_tag
AFTER INSERT ON tag DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE trg_delete_unused_tag();

CREATE CONSTRAINT TRIGGER delete_unused_tag
AFTER DELETE ON artist_tag DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE trg_delete_unused_tag_ref();

CREATE CONSTRAINT TRIGGER delete_unused_tag
AFTER DELETE ON label_tag DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE trg_delete_unused_tag_ref();

CREATE CONSTRAINT TRIGGER delete_unused_tag
AFTER DELETE ON release_group_tag DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE trg_delete_unused_tag_ref();

CREATE CONSTRAINT TRIGGER delete_unused_tag
AFTER DELETE ON work_tag DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE trg_delete_unused_tag_ref();

COMMIT;

-- vi: set ts=4 sw=4 et :
