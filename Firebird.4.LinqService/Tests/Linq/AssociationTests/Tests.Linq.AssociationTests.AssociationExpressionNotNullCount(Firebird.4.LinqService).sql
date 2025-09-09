BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"NotNullParent" "p"
		INNER JOIN "NotNullChild" "a_ChildInner" ON "p".ID = "a_ChildInner"."ParentID"

