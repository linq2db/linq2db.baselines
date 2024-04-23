BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."ParentID" + "p"."ParentID"
FROM
	"Child" "t"
		INNER JOIN "Parent" "p" ON "t"."ParentID" = "p"."ParentID"
WHERE
	"t"."ParentID" + "p"."ParentID" > 2

