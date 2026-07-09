-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	"a_ChildInner"."ParentID"
FROM
	"NotNullParent" p
		INNER JOIN "NotNullChild" "a_ChildInner" ON p."ID" = "a_ChildInner"."ParentID"

