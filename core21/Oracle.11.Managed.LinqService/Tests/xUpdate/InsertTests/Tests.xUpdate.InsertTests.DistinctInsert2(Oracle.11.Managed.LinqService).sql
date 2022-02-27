BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO LinqDataTypes
(
	ID,
	GuidValue,
	BoolValue
)
SELECT
	Cast(Floor(t2.c1 + 1001D) as Int),
	Sys_Guid(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(Cast(t1.ID as Float) / 3D) as c1
		FROM
			LinqDataTypes t1
	) t2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

