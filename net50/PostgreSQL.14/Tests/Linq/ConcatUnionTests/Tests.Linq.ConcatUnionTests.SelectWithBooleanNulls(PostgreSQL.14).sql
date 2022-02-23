BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t2.a,
	t2.b
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"Child" t1
				)
					THEN True
				ELSE False
			END as a,
			CASE
				WHEN x."ParentID" <> 0 THEN True
				ELSE False
			END as b
		FROM
			"Parent" x
	) t2
UNION ALL
SELECT
	t4.a,
	t4.b
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"Child" t3
				)
					THEN True
				ELSE False
			END as a,
			Cast(NULL as Boolean) as b
		FROM
			"Parent" x_1
	) t4

