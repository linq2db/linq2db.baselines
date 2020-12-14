BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(t1."ChildID"),
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			t1."ParentID" = ch."ParentID" AND ch."ChildID" > 20
	),
	(
		SELECT
			Count(*)
		FROM
			"Child" ch_1
		WHERE
			t1."ParentID" = ch_1."ParentID" AND ch_1."ChildID" > 10
	)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

