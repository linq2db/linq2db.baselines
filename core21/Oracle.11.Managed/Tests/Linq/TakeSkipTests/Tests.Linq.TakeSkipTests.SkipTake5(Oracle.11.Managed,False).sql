BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t3."ParentID",
	t3."ChildID"
FROM
	(
		SELECT
			t2."ParentID",
			t2."ChildID",
			ROWNUM as RN
		FROM
			"Child" t2
		WHERE
			ROWNUM <= 7
	) t3
WHERE
	t3.RN > 2

