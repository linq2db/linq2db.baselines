-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p_1."ParentID"
FROM
	(
		SELECT DISTINCT ON (p."ParentID", p."Value1")
			p."Value1",
			p."ParentID"
		FROM
			"Parent" p
		ORDER BY
			p."ParentID",
			p."Value1" NULLS FIRST
	) p_1
ORDER BY
	p_1."Value1" NULLS FIRST,
	p_1."ParentID"

