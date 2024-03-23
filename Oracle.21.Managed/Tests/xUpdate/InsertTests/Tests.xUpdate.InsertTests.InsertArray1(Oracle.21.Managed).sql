BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	NULL
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1001
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

