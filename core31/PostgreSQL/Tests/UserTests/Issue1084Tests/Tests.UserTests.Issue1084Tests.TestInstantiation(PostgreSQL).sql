BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE i1084_person
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE i1084_student
(
	"Id"            Int  NOT NULL,
	"Number"        text     NULL,
	"StatusBitmask" Int  NOT NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	k_1."Id",
	k_1."Number",
	k_1."StatusBitmask",
	"joinedTable"."StatusBitmask"
FROM
	i1084_person k_1
		LEFT JOIN i1084_student "joinedTable" ON (k_1."Id" = "joinedTable"."Id" AND Cast(k_1."Number" as VarChar(11)) = "joinedTable"."Number")

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE i1084_student

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE i1084_person

