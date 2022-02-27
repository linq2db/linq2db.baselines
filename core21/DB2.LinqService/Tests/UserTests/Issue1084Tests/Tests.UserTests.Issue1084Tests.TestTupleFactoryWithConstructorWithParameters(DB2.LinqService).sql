BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "i1084_person"
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "i1084_student"
(
	"Id"            Int           NOT NULL,
	"Number"        NVarChar(255)     NULL,
	"StatusBitmask" Int           NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "i1084_student"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "i1084_person"

