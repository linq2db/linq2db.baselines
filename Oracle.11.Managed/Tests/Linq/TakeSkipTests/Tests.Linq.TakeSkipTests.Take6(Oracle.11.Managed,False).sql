BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	(
		SELECT
			t1."ParentID",
			t1."ChildID"
		FROM
			"Child" t1
		ORDER BY
			t1."ChildID"
	) t2
WHERE
	ROWNUM <= 3
ORDER BY
	t2."ChildID"

