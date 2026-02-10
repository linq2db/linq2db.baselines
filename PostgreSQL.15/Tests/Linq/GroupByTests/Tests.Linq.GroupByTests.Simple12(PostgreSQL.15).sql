-- PostgreSQL.15 PostgreSQL

SELECT
	t2."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID" + 1 as "ParentID",
			t1."ChildID"
		FROM
			"GrandChild" t1
	) t2

