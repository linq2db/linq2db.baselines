BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
				INNER JOIN "GrandChild" g_1 ON c_1."ParentID" = g_1."ParentID" AND c_1."ChildID" = g_1."ChildID"
		WHERE
			g_1."ParentID" + 1 < p2."ParentID" + 2 AND g_1."ParentID" + 1 < p2."ParentID" + 2 AND
			p2."ParentID" = c_1."ParentID"
	)
FROM
	"Parent" p2
WHERE
	p2."ParentID" + 2 > 0 AND p2."ParentID" + 1 > 0

