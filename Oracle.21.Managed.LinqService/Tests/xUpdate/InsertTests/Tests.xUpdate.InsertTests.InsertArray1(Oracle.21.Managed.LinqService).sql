BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

