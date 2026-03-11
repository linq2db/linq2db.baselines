-- Oracle.11.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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
	t.ID = 1001 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t
WHERE
	t.ID > 1000

