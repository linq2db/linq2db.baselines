-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

