BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."Value1"
FROM
	(
		SELECT
			"p"."ParentID",
			CAST(NULL AS Int) as "Value1"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"p2"."ParentID",
			"p2"."Value1"
		FROM
			"Parent" "p2"
	) "p_1"

