BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	"t"."count_1"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"Child" "t1"
				WHERE
					"p"."ParentID" = "t1"."ParentID"
			) as "count_1",
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "t"
WHERE
	"t"."count_1" > 0

