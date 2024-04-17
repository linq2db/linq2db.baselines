BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
		INNER JOIN "Child" "y" ON "x"."ParentID" = "y"."ParentID"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
		INNER JOIN "Child" "y" ON "x"."ParentID" = "y"."ParentID"
GROUP BY
	"x"."ParentID"

