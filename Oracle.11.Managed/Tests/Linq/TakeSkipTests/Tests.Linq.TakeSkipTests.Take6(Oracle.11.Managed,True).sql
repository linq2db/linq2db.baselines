-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

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
	ROWNUM <= :take
ORDER BY
	t2."ChildID"

