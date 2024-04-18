BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."ParentID",
	Count(*)
FROM
	"Child" "x"
		INNER JOIN "GrandChild" "y" ON "x"."ParentID" = "y"."ParentID" AND "x"."ChildID" = "y"."ChildID"
GROUP BY
	"x"."ParentID"

