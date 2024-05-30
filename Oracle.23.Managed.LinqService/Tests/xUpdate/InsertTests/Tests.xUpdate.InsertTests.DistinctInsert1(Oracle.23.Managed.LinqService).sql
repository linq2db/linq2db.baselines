﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1.ID > 1000

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "LinqDataTypes"
(
	ID,
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST(Floor(t2."c1" + 1001D) AS Int),
	Sys_Guid(),
	1
FROM
	(
		SELECT DISTINCT
			Floor(CAST(t1.ID AS Float) / 3D) as "c1"
		FROM
			"LinqDataTypes" t1
	) t2

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1.ID > 1000

