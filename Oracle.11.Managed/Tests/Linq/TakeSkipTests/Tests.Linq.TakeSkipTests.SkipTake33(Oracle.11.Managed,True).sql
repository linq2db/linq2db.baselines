-- Oracle.11.Managed Oracle11

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
		WHERE
			ROWNUM <= 8
	) t3
WHERE
	t3.RN > 3
ORDER BY
	t3."ChildID"

-- Oracle.11.Managed Oracle11

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
		WHERE
			ROWNUM <= 8
	) t3
WHERE
	t3.RN > 3
ORDER BY
	t3."ChildID"

