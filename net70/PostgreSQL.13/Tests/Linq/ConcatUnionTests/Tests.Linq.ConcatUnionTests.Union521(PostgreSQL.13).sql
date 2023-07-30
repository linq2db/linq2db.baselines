BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Value1"
FROM
	(
		SELECT
			p1."ParentID",
			Cast(NULL as Int) as "Value1"
		FROM
			"Parent" p1
		UNION
		SELECT
			p2."ParentID",
			p2."Value1"
		FROM
			"Parent" p2
	) p

