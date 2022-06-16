BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			WHERE
				p."ParentID" = t1."ParentID"
			ORDER BY
				t1."ChildID"
			LIMIT 1
		) t2 ON 1=1

