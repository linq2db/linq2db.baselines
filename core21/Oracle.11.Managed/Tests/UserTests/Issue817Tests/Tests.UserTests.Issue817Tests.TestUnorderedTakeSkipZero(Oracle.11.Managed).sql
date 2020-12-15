BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t3."c1"
FROM
	(
		SELECT
			t2."c1",
			ROWNUM as RN
		FROM
			(
				SELECT
					1 as "c1"
				FROM
					"Person" t1
			) t2
		WHERE
			ROWNUM <= :take
	) t3
WHERE
	t3.RN > :skip

