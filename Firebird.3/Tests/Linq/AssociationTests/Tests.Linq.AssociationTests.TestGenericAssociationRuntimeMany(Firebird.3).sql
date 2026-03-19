-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1",
	"m_1"."ParentID",
	"m_1"."ChildID"
FROM
	"Parent" "t1"
		INNER JOIN "Child" "m_1" ON "t1"."ParentID" = "m_1"."ParentID"
WHERE
	"m_1"."ChildID" > 1 AND "t1"."ParentID" IN (1, 5)
ORDER BY
	"t1"."ParentID"

