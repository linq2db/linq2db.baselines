BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT
					c_1."ParentID" + 1 as "ID"
				FROM
					"Child" c_1
				WHERE
					p1."ParentID" = c_1."ParentID"
			) c_2
		WHERE
			c_2."ID" < p1."ID"
	)
FROM
	(
		SELECT
			p2."ParentID" + 1 as "ID",
			p2."ParentID"
		FROM
			"Parent" p2
	) p1
WHERE
	p1."ID" > 0

