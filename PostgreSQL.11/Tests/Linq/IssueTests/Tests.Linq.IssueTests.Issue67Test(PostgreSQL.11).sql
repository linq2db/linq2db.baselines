BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t_1."ParentID",
	t_1."COUNT_1"
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					"Child" c_1
				WHERE
					t."ParentID" = c_1."ParentID"
			) as "COUNT_1",
			t."ParentID"
		FROM
			"Parent" t
	) t_1
WHERE
	t_1."COUNT_1" > 0

