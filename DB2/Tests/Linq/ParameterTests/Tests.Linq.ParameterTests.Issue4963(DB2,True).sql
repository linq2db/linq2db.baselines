-- DB2 DB2.LUW DB2LUW

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + -1 AS SmallInt)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
FETCH NEXT 2 ROWS ONLY

