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
					(
						SELECT
							MAX(g_1."ChildID") as "Max_1",
							g_1."ParentID"
						FROM
							"Child" g_1
						GROUP BY
							g_1."ParentID"
					) x
				ORDER BY
					x."Max_1" DESC
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

