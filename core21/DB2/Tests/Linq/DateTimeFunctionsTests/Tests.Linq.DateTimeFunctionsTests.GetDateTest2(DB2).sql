BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c1",
	Count(*)
FROM
	(
		SELECT
			Date(CURRENT_TIMESTAMP) as "c1"
		FROM
			"Parent" "v"
				INNER JOIN "Child" "s" ON "v"."ParentID" = "s"."ParentID"
		WHERE
			"v"."Value1" > 0
	) "t1"
GROUP BY
	"t1"."c1"
FETCH FIRST 5 ROWS ONLY

