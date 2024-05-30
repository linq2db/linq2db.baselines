BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1

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
	) t3
WHERE
	t3.RN > :skip

