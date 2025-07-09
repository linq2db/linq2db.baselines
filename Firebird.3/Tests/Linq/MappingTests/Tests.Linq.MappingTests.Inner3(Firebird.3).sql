BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
		INNER JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."Value1" = 1
FETCH NEXT 1 ROWS ONLY

