BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"NotNullParent" p
		INNER JOIN "NotNullChild" "a_ChildInner" ON p."ID" = "a_ChildInner"."ParentID"

