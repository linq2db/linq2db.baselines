-- Firebird.3 Firebird3
SELECT
	"a_Parent"."Value1"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "p"."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
WHERE
	"p"."ParentID" = 1

