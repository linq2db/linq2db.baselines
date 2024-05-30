BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH MY_CTE ("field")
AS
(
	SELECT
		"t1"."ChildID"
	FROM
		(
			SELECT
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			FETCH NEXT 1 ROWS ONLY
		) "t1"
	UNION ALL
	SELECT
		"t2"."ChildID" + 1
	FROM
		"Child" "t2",
		MY_CTE "ct"
	WHERE
		"ct"."field" = "t2"."ChildID" + 1
)
SELECT
	"t3"."field"
FROM
	MY_CTE "t3"

