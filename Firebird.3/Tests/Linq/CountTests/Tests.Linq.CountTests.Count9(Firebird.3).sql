-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Child" "p"
		INNER JOIN "Parent" "a_Parent" ON "p"."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" = 1

-- Firebird.3 Firebird3

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"

