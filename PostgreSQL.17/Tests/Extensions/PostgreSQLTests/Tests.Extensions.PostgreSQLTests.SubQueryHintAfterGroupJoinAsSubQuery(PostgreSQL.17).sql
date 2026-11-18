-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x_1."ParentID",
	x_1."Cnt"
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					"Child" c_1
				WHERE
					x."ParentID" = c_1."ParentID"
			) as "Cnt",
			x."ParentID"
		FROM
			"Parent" x
		WHERE
			x."ParentID" > 1
		FOR UPDATE
	) x_1
WHERE
	x_1."Cnt" > 0

