BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"a_Parent"."Value1"
FROM
	"Parent" "t1"
		INNER JOIN "Child" "a_Children" ON "t1"."ParentID" = "a_Children"."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON "a_Children"."ParentID" = "a_Parent"."Value1"
WHERE
	"a_Parent"."Value1" IS NULL
FETCH NEXT 1 ROWS ONLY

