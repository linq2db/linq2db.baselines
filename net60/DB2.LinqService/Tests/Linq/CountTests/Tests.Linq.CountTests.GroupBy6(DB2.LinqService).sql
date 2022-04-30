BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as "c1"
		FROM
			"Child" "t1"
		GROUP BY
			"t1"."ParentID"
	) "t2"

