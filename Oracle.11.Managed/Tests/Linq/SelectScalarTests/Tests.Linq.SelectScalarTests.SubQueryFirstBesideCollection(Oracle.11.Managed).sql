-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

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

-- Oracle.11.Managed Oracle11
SELECT
	(
		SELECT
			t2."FirstId"
		FROM
			(
				SELECT
					t1."ParentID" as "FirstId"
				FROM
					"Parent" t1
				ORDER BY
					t1."ParentID"
			) t2
		WHERE
			ROWNUM <= 1
	)
FROM SYS.DUAL

