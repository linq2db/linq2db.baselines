﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS i1084_person

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS i1084_person
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO i1084_person
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(1,1,0),
(2,2,0)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS i1084_student
(
	"Id"            Int  NOT NULL,
	"Number"        text     NULL,
	"StatusBitmask" Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO i1084_student
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(1,'1',0),
(2,'2',0)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	k_1."Id",
	k_1."Number",
	k_1."StatusBitmask",
	"joinedTable"."StatusBitmask"
FROM
	i1084_person k_1
		LEFT JOIN i1084_student "joinedTable" ON k_1."Id" = "joinedTable"."Id" AND Cast(k_1."Number" as text) = "joinedTable"."Number"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS i1084_person

