BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"a_ChildInner"."ParentID"
FROM
	"NotNullParent" "p"
		INNER JOIN "NotNullChild" "a_ChildInner" ON "p".ID = "a_ChildInner"."ParentID"

