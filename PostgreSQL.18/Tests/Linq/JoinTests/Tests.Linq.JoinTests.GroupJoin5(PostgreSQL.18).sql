-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				p."ParentID" = ch."ParentID"
			ORDER BY
				ch."ChildID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	p."ParentID" >= 1
ORDER BY
	p."ParentID"

