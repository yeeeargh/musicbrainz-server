\unset ON_ERROR_STOP

CREATE INDEX artist_idx_txt ON artist USING gin(to_tsvector('mb_simple', name));
CREATE INDEX artist_idx_txt_sort ON artist USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX artist_alias_idx_txt ON artist_alias USING gin(to_tsvector('mb_simple', name));
CREATE INDEX artist_alias_idx_txt_sort ON artist_alias USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX artist_credit_idx_txt ON artist_credit USING gin(to_tsvector('mb_simple', name));
CREATE INDEX artist_credit_name_idx_txt ON artist_credit_name USING gin(to_tsvector('mb_simple', name));

CREATE INDEX label_idx_txt ON label USING gin(to_tsvector('mb_simple', name));
CREATE INDEX label_idx_txt_sort ON label USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX label_alias_idx_txt ON label_alias USING gin(to_tsvector('mb_simple', name));
CREATE INDEX label_alias_idx_txt_sort ON label_alias USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX release_idx_txt ON release USING gin(to_tsvector('mb_simple', name));

CREATE INDEX release_group_idx_txt ON release_group USING gin(to_tsvector('mb_simple', name));

CREATE INDEX recording_idx_txt ON recording USING gin(to_tsvector('mb_simple', name));
CREATE INDEX track_idx_txt ON track USING gin(to_tsvector('mb_simple', name));

CREATE INDEX work_idx_txt ON work USING gin(to_tsvector('mb_simple', name));

CREATE INDEX work_alias_idx_txt ON work_alias USING gin(to_tsvector('mb_simple', name));
CREATE INDEX work_alias_idx_txt_sort ON work_alias USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX area_idx_name_txt ON area USING gin(to_tsvector('mb_simple', name));
CREATE INDEX area_idx_txt_sort ON area USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX area_alias_idx_txt ON area_alias USING gin(to_tsvector('mb_simple', name));
CREATE INDEX area_alias_idx_txt_sort ON area_alias USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX place_idx_name_txt ON place USING gin(to_tsvector('mb_simple', name));

CREATE INDEX place_alias_idx_txt ON place_alias USING gin(to_tsvector('mb_simple', name));
CREATE INDEX place_alias_idx_txt_sort ON place_alias USING gin(to_tsvector('mb_simple', sort_name));

CREATE INDEX tag_idx_name_txt ON tag USING gin(to_tsvector('mb_simple', name));
