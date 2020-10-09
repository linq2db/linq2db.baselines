BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.c1,
	Sum(t1."ParentID")
FROM
	(
		SELECT
			"selectParam"."ChildID" + 1 as "Key_1",
			"selectParam"."ChildID" + 1 as c1,
			"selectParam"."ParentID"
		FROM
			"Child" "selectParam"
	) t1
GROUP BY
	t1."Key_1",
	t1.c1

