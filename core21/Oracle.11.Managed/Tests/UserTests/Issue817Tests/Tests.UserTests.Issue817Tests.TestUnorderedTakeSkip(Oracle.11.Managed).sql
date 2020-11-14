BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @skip_1 Int32
SET     @skip_1 = 1

SELECT
	1
FROM
	(
		SELECT
			ROWNUM as RN
		FROM
			"Person" t2
		WHERE
			ROWNUM <= :skip
	) t3
WHERE
	t3.RN > :skip_1

