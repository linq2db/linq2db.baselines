BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

