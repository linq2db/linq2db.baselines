-- Oracle.11.Managed Oracle11

SELECT
	t2."ChildID"
FROM
	(
		SELECT
			t1."ParentID" + 1 as "ParentID",
			t1."ChildID"
		FROM
			"GrandChild" t1
	) t2
GROUP BY
	t2."ParentID",
	t2."ChildID"

