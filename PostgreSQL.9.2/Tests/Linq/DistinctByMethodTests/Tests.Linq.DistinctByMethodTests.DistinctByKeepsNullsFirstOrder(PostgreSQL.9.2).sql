-- PostgreSQL.9.2 PostgreSQL
SELECT
	p_1."Value1"
FROM
	(
		SELECT DISTINCT ON (Floor(p."ParentID"::decimal % 2)::Int)
			p."Value1"
		FROM
			"Parent" p
		ORDER BY
			Floor(p."ParentID"::decimal % 2)::Int,
			p."Value1" NULLS FIRST
	) p_1
ORDER BY
	p_1."Value1" NULLS FIRST

