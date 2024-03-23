BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p_2."ParentID"
FROM
	(
		SELECT
			p_1."ParentID"
		FROM
			(
				SELECT
					p."ParentID"
				FROM
					"Child" p
				GROUP BY
					p."ParentID"
			) p_1
		GROUP BY
			p_1."ParentID"
	) p_2
GROUP BY
	p_2."ParentID"

