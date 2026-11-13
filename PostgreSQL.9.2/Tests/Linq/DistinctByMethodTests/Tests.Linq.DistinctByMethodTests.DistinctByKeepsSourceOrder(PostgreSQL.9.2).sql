-- PostgreSQL.9.2 PostgreSQL
SELECT
	p_1."ParentID"
FROM
	(
		SELECT DISTINCT ON (p."Value1")
			p."ParentID"
		FROM
			"Parent" p
		ORDER BY
			p."Value1",
			p."ParentID" DESC
	) p_1
ORDER BY
	p_1."ParentID" DESC

