BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @offset Integer(4) -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + CAST(@offset AS Int) AS SmallInt)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
FETCH NEXT 2 ROWS ONLY

