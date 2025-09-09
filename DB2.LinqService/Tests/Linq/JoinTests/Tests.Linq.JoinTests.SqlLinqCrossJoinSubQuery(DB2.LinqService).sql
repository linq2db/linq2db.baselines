BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p_1"."ParentID",
	"t1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
		FETCH NEXT 10 ROWS ONLY
	) "p_1",
	(
		SELECT
			"c_1"."ChildID"
		FROM
			"Child" "c_1"
		FETCH NEXT 10 ROWS ONLY
	) "t1"

