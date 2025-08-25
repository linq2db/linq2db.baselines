BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	(
		SELECT
			t1."ParentID",
			t1."ChildID",
			ROWNUM as RN
		FROM
			(
				SELECT
					ch."ParentID",
					ch."ChildID"
				FROM
					"Child" ch
				WHERE
					ch."ChildID" > 3 OR ch."ChildID" < 4
				ORDER BY
					ch."ParentID",
					ch."ChildID"
			) t1
	) t2
WHERE
	t2.RN > 3
ORDER BY
	t2."ParentID",
	t2."ChildID"

