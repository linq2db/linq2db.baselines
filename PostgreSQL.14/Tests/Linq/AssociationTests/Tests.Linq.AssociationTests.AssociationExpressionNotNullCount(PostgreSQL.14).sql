-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"NotNullParent" p
		INNER JOIN "NotNullChild" "a_ChildInner" ON p."ID" = "a_ChildInner"."ParentID"

