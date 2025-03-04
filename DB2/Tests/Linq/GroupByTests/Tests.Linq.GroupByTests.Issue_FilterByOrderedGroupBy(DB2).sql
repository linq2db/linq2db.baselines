BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	"t"."ChildID"
FROM
	"Child" "t"
WHERE
	"t"."ParentID" IN (
		SELECT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"x"."ParentID"
				FROM
					(
						SELECT
							MAX("g_1"."ChildID") as "Max_1",
							"g_1"."ParentID"
						FROM
							"Child" "g_1"
						GROUP BY
							"g_1"."ParentID"
					) "x"
				ORDER BY
					"x"."Max_1" DESC
				FETCH NEXT 2 ROWS ONLY
			) "t1"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

