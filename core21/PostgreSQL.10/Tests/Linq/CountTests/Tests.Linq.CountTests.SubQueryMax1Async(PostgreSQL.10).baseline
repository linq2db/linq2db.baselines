BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Max(t1.cnt)
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				Count(*) as cnt
			FROM
				"Child" c_1
					LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
			WHERE
				"a_Parent"."ParentID" = p."ParentID"
		) t1 ON 1=1

