-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	"a_ChildInner"."ParentID"
FROM
	"NotNullParent" p
		INNER JOIN "NotNullChild" "a_ChildInner" ON p."ID" = "a_ChildInner"."ParentID"

