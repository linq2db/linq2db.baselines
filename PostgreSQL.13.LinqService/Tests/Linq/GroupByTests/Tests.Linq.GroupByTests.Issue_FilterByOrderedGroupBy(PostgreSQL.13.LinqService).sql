BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
WHERE
	t."ParentID" IN (
		SELECT
			t1."ParentID"
		FROM
			(
				SELECT
					x."ParentID"
				FROM
					"Child" x
				GROUP BY
					x."ParentID"
				ORDER BY
					MAX(x."ChildID") DESC
				LIMIT 2
			) t1
	)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

