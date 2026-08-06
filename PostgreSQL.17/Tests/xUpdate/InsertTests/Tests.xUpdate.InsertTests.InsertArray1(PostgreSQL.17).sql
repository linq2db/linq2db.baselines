-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
INSERT INTO "LinqDataTypes"
(
	"ID",
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	True,
	NULL
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1001
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

