BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Value1"
FROM
	(
		SELECT
			"p1"."ParentID",
			Cast(NULL as Int) as "Value1"
		FROM
			"Parent" "p1"
		UNION
		SELECT
			"p2"."ParentID",
			"p2"."Value1"
		FROM
			"Parent" "p2"
	) "p"

