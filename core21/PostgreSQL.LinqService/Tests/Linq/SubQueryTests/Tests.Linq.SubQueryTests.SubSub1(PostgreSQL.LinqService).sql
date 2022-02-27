BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" + 1 < p1."ID" AND p1."ParentID" = c_1."ParentID"
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

