-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x."Value1"
FROM
	(
		SELECT DISTINCT ON (p."Value1")
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
		ORDER BY
			p."Value1",
			p."ParentID" DESC
	) x
ORDER BY
	x."ParentID" DESC

