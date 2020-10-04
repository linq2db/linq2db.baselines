BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."Key_1"
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						Avg(c_1."ParentID")
					FROM
						"Child" c_1
					WHERE
						p."ParentID" = c_1."ParentID"
				) > 3
					THEN True
				ELSE False
			END as "Key_1"
		FROM
			"Parent" p
		WHERE
			(
				SELECT
					Count(*)
				FROM
					"Child" t1
				WHERE
					p."ParentID" = t1."ParentID"
			) > 0
	) t2
GROUP BY
	t2."Key_1"

