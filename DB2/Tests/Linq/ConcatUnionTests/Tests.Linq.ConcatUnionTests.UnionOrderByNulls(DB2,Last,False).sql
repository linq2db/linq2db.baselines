-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p"."Value1",
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" < 5
		UNION
		SELECT
			"p_1"."Value1",
			"p_1"."ParentID"
		FROM
			"Parent" "p_1"
		WHERE
			"p_1"."ParentID" >= 3
	) "t1"
ORDER BY
	"t1"."Value1" NULLS LAST,
	"t1"."ParentID"
FETCH NEXT 3 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

