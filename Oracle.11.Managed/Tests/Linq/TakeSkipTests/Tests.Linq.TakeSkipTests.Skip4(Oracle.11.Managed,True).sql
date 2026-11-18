-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 3

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
					t1."ChildID" DESC
			) t2
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3."ChildID" DESC

