﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE i1084_person
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE i1084_student
(
	"Id"            Int  NOT NULL,
	"Number"        text     NULL,
	"StatusBitmask" Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	k_1."StatusBitmask",
	"joinedTable"."StatusBitmask"
FROM
	i1084_person k_1
		LEFT JOIN i1084_student "joinedTable" ON k_1."Id" = "joinedTable"."Id" AND Cast(k_1."Number" as VarChar(11)) = "joinedTable"."Number"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS i1084_person

