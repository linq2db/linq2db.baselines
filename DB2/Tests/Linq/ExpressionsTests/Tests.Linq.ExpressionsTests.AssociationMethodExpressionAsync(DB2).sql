-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
				INNER JOIN "GrandChild" "a_GrandChildren" ON "a_Children"."ParentID" = "a_GrandChildren"."ParentID" AND "a_Children"."ChildID" = "a_GrandChildren"."ChildID"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "p"

