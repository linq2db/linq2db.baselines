BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID"
FROM
	(
		SELECT
			ch."ParentID" + p."ParentID" as "ID"
		FROM
			"Child" ch
				INNER JOIN "Parent" p ON ch."ParentID" = p."ParentID"
	) t
WHERE
	t."ID" > 2

