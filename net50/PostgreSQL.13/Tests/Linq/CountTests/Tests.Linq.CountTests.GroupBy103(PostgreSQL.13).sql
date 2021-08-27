BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			ch."ChildID" > 20 AND t1."ParentID" = ch."ParentID" AND
			t1."ChildID" = ch."ChildID"
	)
FROM
	"Child" t1
GROUP BY
	t1."ParentID",
	t1."ChildID"

