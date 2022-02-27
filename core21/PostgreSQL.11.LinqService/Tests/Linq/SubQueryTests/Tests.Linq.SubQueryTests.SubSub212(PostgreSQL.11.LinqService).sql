BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" c_1
		WHERE
			c_1."ParentID" + 1 < p1."ID" AND c_1."ParentID" + 1 < p1."ID" AND
			p1."ParentID" = c_1."ParentID"
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
					"a_Parent"."ParentID"
				FROM
					"Child" p2
						INNER JOIN "Parent" "a_Parent" ON p2."ParentID" = "a_Parent"."ParentID"
			) p3
		WHERE
			p3."ID" > 0
	) p1
WHERE
	p1."ID" > 0

