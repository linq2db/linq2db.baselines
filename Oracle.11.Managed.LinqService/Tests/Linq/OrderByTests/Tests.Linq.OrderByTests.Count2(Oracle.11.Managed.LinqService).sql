BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t2."c1"
		FROM
			(
				SELECT
					1 as "c1"
				FROM
					"Parent" t1
				ORDER BY
					t1."ParentID"
			) t2
		WHERE
			ROWNUM <= :take
	) t3

