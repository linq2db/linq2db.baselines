BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT
					c_2."ParentID" + 1 as "ID"
				FROM
					(
						SELECT
							c_1."ParentID" + 1 as "ID",
							c_1."ParentID"
						FROM
							"Child" c_1
						WHERE
							p1."ParentID" = c_1."ParentID"
					) c_2
				WHERE
					c_2."ID" < p1."ID"
			) c_3
		WHERE
			c_3."ID" < p1."ID"
	)
FROM
	(
		SELECT
			p3."ID" + 1 as "ID",
			p3."ParentID"
		FROM
			(
				SELECT
					p2."ParentID" + 1 as "ID",
					p2."ParentID"
				FROM
					"Parent" p2
			) p3
		WHERE
			p3."ID" > 0
	) p1
WHERE
	p1."ID" > 0

