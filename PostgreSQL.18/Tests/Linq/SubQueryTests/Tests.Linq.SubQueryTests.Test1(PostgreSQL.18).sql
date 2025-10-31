-- PostgreSQL.18 PostgreSQL

SELECT
	(
		SELECT
			MAX(ch."ChildID")
		FROM
			"Child" ch
		WHERE
			ch."ParentID" = p."ParentID"
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

