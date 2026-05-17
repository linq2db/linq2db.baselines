-- Firebird.3 Firebird3

SELECT
	"a_ChildOuter"."ParentID"
FROM
	"NotNullParent" "p"
		LEFT JOIN "NotNullChild" "a_ChildOuter" ON "p".ID = "a_ChildOuter"."ParentID"
ORDER BY
	"p".ID

