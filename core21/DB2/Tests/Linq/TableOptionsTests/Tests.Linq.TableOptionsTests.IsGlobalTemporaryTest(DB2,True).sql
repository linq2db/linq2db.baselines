BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE GLOBAL TEMPORARY TABLE SESSION."IsGlobalTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	SESSION."IsGlobalTemporaryTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE SESSION."IsGlobalTemporaryTable"

