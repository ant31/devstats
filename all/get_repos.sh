#!/bin/sh
GHA2DB_PROJECTS_OVERRIDE="+all" GHA2DB_LOCAL=1 GHA2DB_PROCESS_COMMITS=1 GHA2DB_PROCESS_REPOS=1 GHA2DB_EXTERNAL_INFO=1 GHA2DB_PROJECTS_COMMITS="all" PG_DB=allprj ./get_repos
