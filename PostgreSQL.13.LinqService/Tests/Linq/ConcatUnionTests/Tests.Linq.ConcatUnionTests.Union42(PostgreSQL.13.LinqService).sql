BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1.val
FROM
	(
		SELECT
			p."ParentID" as id,
			True::Boolean as val
		FROM
			"Parent" p
		UNION
		SELECT
			ch."ParentID" as id,
			False::Boolean as val
		FROM
			"Child" ch
	) p_1

