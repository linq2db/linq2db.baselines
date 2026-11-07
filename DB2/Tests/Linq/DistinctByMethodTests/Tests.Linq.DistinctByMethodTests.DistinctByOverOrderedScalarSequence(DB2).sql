-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY Mod("e"."ParentID", 2) ORDER BY "e"."ParentID" DESC) as "RowNumber",
			"e"."ParentID" as "RowNumber_1"
		FROM
			"Parent" "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."RowNumber_1" DESC

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

