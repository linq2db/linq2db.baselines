-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce((
		SELECT
			MAX("a_Children"."ChildID")
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	), "p"."Value1")
FROM
	"Parent" "p"

