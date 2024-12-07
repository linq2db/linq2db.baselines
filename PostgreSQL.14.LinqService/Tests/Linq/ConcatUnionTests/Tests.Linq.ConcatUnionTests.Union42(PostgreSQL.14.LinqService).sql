BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1.val
FROM
	(
		SELECT
			p."ParentID",
			True::Boolean as val
		FROM
			"Parent" p
		UNION
		SELECT
			ch."ParentID",
			False::Boolean as val
		FROM
			"Child" ch
	) p_1

