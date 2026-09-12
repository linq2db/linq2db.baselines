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
			"p"."ParentID" = 2
		FETCH NEXT 1 ROWS ONLY
	) "p_1"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "p_1"."ParentID"

