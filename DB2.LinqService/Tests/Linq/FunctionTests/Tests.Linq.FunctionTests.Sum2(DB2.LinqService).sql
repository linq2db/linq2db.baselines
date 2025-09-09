BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	(
		SELECT
			SUM("a_Children"."ParentID" * "a_Children"."ChildID")
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 2
	)
FROM
	"Parent" "p"

