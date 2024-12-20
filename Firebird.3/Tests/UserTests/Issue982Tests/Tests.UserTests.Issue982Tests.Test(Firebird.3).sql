BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	"p"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "p"."ParentID"
		INNER JOIN (
			SELECT
				"g_1"."ChildID" as "Key_1"
			FROM
				"Child" "g_1"
			GROUP BY
				"g_1"."ChildID"
		) "cg" ON "c_1"."ChildID" = "cg"."Key_1"
WHERE
	("p"."ParentID" > 1 OR "p"."ParentID" > 0) AND ('one' != 'two')

