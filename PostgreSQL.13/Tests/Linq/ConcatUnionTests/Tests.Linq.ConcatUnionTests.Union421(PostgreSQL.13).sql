BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p_2.val
FROM
	(
		SELECT
			p."ParentID",
			True::Boolean as val
		FROM
			"Parent" p
		UNION
		SELECT
			p_1."ParentID",
			False::Boolean as val
		FROM
			"Parent" p_1
		UNION
		SELECT
			ch."ParentID",
			False::Boolean as c1
		FROM
			"Child" ch
	) p_2

