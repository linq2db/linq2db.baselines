BeforeExecute
-- Firebird

CREATE TABLE "i1084_person"
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "i1084_person"
(
	"Id",
	"Number",
	"StatusBitmask"
)
SELECT 1,1,0 FROM rdb$database UNION ALL
SELECT 2,2,0 FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "i1084_student"
(
	"Id"            Int                                    NOT NULL,
	"Number"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"StatusBitmask" Int                                    NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "i1084_student"
(
	"Id",
	"Number",
	"StatusBitmask"
)
SELECT 1,'1',0 FROM rdb$database UNION ALL
SELECT 2,'2',0 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"k_1"."Id",
	"k_1"."Number",
	"k_1"."StatusBitmask",
	"joinedTable"."StatusBitmask"
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "joinedTable" ON ("k_1"."Id" = "joinedTable"."Id" AND Cast("k_1"."Number" as VarChar(11) CHARACTER SET UNICODE_FSS) = "joinedTable"."Number")

BeforeExecute
-- Firebird

DROP TABLE "i1084_student"

BeforeExecute
-- Firebird

DROP TABLE "i1084_person"

