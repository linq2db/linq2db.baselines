-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t2."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID",
			t1."ChildID"
		FROM
			"GrandChild" t1
	) t2

