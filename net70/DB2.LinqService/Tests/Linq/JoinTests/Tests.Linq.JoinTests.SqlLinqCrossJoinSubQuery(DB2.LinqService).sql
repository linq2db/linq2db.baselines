BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
		FETCH FIRST 10 ROWS ONLY
	) "p_1",
	(
		SELECT
			"t1"."ChildID"
		FROM
			"Child" "t1"
		FETCH FIRST 10 ROWS ONLY
	) "c_1"

