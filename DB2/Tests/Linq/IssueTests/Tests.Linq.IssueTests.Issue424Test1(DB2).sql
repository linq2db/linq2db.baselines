-- DB2 DB2.LUW DB2LUW

SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
	) "t2"
ORDER BY
	"t2"."ParentID"
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

