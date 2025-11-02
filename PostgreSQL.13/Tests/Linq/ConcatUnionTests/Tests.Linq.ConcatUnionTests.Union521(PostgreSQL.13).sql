-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1."Value1"
FROM
	(
		SELECT
			p."ParentID",
			NULL::Int as "Value1"
		FROM
			"Parent" p
		UNION
		SELECT
			p2."ParentID",
			p2."Value1"
		FROM
			"Parent" p2
	) p_1

