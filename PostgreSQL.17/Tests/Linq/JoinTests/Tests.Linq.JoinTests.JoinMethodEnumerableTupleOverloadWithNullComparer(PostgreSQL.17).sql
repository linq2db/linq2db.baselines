-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" t
				INNER JOIN "GrandChild" g_1 ON t."ChildID" = g_1."ChildID"
		WHERE
			p."ParentID" = t."ParentID" AND p."ParentID" = g_1."ParentID" AND
			g_1."GrandChildID" > 0
	)

