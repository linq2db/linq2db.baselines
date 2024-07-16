BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p"."ParentID",
			"p"."Value1",
			(
				SELECT
					COUNT(*)
				FROM
					"Child" "a_Children"
				WHERE
					"p"."ParentID" = "a_Children"."ParentID"
			) as COUNT_1
		FROM
			"Parent" "p"
	) "t1"
WHERE
	"t1".COUNT_1 > 2

