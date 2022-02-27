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

CREATE TABLE "i1084_student"
(
	"Id"            Int                                    NOT NULL,
	"Number"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"StatusBitmask" Int                                    NOT NULL
)

BeforeExecute
-- Firebird

DROP TABLE "i1084_student"

BeforeExecute
-- Firebird

DROP TABLE "i1084_person"

