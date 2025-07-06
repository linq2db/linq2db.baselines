BeforeExecute
-- PostgreSQL.18 PostgreSQL

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

