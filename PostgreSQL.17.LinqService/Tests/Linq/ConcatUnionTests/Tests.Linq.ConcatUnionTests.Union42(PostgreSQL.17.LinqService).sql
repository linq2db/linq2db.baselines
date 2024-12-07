BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

