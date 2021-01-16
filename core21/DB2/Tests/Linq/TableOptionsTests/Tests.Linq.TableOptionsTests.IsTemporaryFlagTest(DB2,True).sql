BeforeExecute
-- DB2 DB2.LUW DB2LUW

DECLARE GLOBAL TEMPORARY TABLE SESSION."IsTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE SESSION."IsTemporaryTable"

