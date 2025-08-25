BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @n Int32
SET     @n = 3

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
			(
				SELECT
					t1."ParentID",
					t1."ChildID"
				FROM
					"Child" t1
				ORDER BY
					t1."ChildID"
			) t2
	) t3
WHERE
	t3.RN > :n
ORDER BY
	t3."ChildID"

