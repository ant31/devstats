CREATE TABLE gha_commits_files (
    sha character varying(40) NOT NULL,
    event_id bigint NOT NULL,
    path text NOT NULL,
    dup_repo_id bigint NOT NULL,
    dup_repo_name character varying(160) NOT NULL,
    dup_type character varying(40) NOT NULL,
    dup_created_at timestamp without time zone NOT NULL
);
ALTER TABLE gha_commits_files OWNER TO gha_admin;
ALTER TABLE ONLY gha_commits_files
    ADD CONSTRAINT gha_commits_files_pkey PRIMARY KEY (sha, event_id, path);
CREATE INDEX commits_files_dup_created_at_idx ON gha_commits_files USING btree (dup_created_at);
CREATE INDEX commits_files_dup_repo_id_idx ON gha_commits_files USING btree (dup_repo_id);
CREATE INDEX commits_files_dup_repo_name_idx ON gha_commits_files USING btree (dup_repo_name);
CREATE INDEX commits_files_dup_type_idx ON gha_commits_files USING btree (dup_type);
CREATE INDEX commits_files_event_id_idx ON gha_commits_files USING btree (event_id);
CREATE INDEX commits_files_path_idx ON gha_commits_files USING btree (path);
CREATE INDEX commits_files_sha_idx ON gha_commits_files USING btree (sha);
