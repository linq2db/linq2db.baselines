-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e_1"."Value1" ORDER BY "e_1"."ParentID" DESC) as "RowNumber",
			"e_1"."ParentID",
			"e_1"."Value1"
		FROM
			(
				SELECT
					"e"."Value1",
					"e"."ParentID"
				FROM
					"Parent" "e"
				ORDER BY
					"e"."ParentID" DESC
				FETCH NEXT 3 ROWS ONLY
			) "e_1"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."ParentID" DESC

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

