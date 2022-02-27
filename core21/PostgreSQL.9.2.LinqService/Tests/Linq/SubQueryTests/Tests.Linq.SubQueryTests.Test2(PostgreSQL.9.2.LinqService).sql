BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	(
		SELECT
			Max(ch."ChildID")
		FROM
			"Child" ch
		WHERE
			ch."ParentID" = p."ParentID" AND ch."ChildID" > 1
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

