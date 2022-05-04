BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
				(
					SELECT DISTINCT
						c_1."ParentID",
						c_1."ChildID"
					FROM
						"Child" c_1
					WHERE
						p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 0
				) t1
			ORDER BY
				t1."ChildID"
			LIMIT 1
		) t2 ON 1=1

