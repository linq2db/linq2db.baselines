BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
WHERE
	"p"."ParentID" = 1

