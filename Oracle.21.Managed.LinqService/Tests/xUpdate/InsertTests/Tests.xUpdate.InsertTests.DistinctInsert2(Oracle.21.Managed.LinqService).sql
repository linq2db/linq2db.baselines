BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1.ID > 1000

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "LinqDataTypes"
(
	ID,
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST(Floor(t2."Value_1" + 1001D) AS Int),
	Sys_Guid(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST(t1.ID AS Float) / 3D) as "Value_1"
		FROM
			"LinqDataTypes" t1
	) t2

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1.ID > 1000

