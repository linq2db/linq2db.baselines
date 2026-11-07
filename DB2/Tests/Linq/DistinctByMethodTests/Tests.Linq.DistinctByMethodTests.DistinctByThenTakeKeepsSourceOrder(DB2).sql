-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."RowNumber_2",
	"t1"."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Value1" ORDER BY "e"."ParentID" DESC) as "RowNumber",
			"e"."Value1" as "RowNumber_1",
			"e"."ParentID" as "RowNumber_2"
		FROM
			"Parent" "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."RowNumber_2" DESC
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

