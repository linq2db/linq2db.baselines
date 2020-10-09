BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "i1084_person"
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "i1084_student"
(
	"Id"            Int                                    NOT NULL,
	"Number"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"StatusBitmask" Int                                    NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"k_1"."StatusBitmask", 
	"joinedTable"."StatusBitmask"
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "joinedTable" ON ("k_1"."Id" = "joinedTable"."Id" AND Cast("k_1"."Number" as VarChar(11) CHARACTER SET UNICODE_FSS) = "joinedTable"."Number")

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "i1084_student"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "i1084_person"

