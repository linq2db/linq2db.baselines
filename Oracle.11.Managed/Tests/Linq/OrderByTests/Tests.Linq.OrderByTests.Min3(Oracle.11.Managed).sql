-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	MIN(t3."ParentID")
FROM
	(
		SELECT
			t2."ParentID"
		FROM
			(
				SELECT
					t1."ParentID"
				FROM
					"Parent" t1
				ORDER BY
					t1."Value1"
			) t2
		WHERE
			ROWNUM <= :take
	) t3

