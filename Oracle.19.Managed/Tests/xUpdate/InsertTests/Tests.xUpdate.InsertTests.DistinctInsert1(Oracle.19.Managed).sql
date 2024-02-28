BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1.ID > 1000

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @BoolValue Int16
SET     @BoolValue = 1

INSERT INTO "LinqDataTypes"
(
	ID,
	"GuidValue",
	"BoolValue"
)
SELECT
	Cast(Floor(t2."c1" + 1001D) as Int),
	Sys_Guid(),
	:BoolValue
FROM
	(
		SELECT DISTINCT
			Floor(Cast(t1.ID as Float) / 3D) as "c1"
		FROM
			"LinqDataTypes" t1
	) t2

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1.ID > 1000

