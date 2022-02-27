BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			t2."ParentID" = c_1."ParentID" AND c_1."ChildID" > 30
	),
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			t2."ParentID" = t1."ParentID" AND t1."ChildID" > 30
	),
	Count(*)
FROM
	"Child" t2
GROUP BY
	t2."ParentID"

