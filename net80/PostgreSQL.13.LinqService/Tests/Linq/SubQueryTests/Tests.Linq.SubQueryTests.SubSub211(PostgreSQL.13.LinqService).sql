BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
				INNER JOIN "GrandChild" g_1 ON c_1."ParentID" = g_1."ParentID" AND c_1."ChildID" = g_1."ChildID"
		WHERE
			g_1."ParentID" + 1 < p1."ID" AND g_1."ParentID" + 1 < p1."ID" AND
			p1."ParentID" = c_1."ParentID"
	)
FROM
	(
		SELECT
			p2."ParentID" + 2 as "ID",
			p2."ParentID"
		FROM
			"Parent" p2
		WHERE
			p2."ParentID" > -1
	) p1
WHERE
	p1."ID" > 0

