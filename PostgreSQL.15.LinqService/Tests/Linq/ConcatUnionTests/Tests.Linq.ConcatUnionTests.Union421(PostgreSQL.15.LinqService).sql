BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p_2.val
FROM
	(
		SELECT
			p."ParentID" as id,
			True::Boolean as val
		FROM
			"Parent" p
		UNION
		SELECT
			p_1."ParentID" as id,
			False::Boolean as val
		FROM
			"Parent" p_1
		UNION
		SELECT
			ch."ParentID" as id,
			False::Boolean as val
		FROM
			"Child" ch
	) p_2

