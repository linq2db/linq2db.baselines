BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
		INNER JOIN "Child" "y" ON "x"."ParentID" = "y"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
		INNER JOIN "Child" "y" ON "x"."ParentID" = "y"."ParentID"
GROUP BY
	"x"."ParentID"

