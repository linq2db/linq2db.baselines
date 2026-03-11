-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @arr Bytea(4) -- Binary
SET     @arr = E'\\x01020304'::bytea

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
	:arr
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

