-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" "a_GrandChildren1"
		WHERE
			"a"."ParentID" = "a_GrandChildren1"."ParentID" AND
			"a"."ChildID" = "a_GrandChildren1"."ChildID"
	)
FROM
	"Child" "a"

