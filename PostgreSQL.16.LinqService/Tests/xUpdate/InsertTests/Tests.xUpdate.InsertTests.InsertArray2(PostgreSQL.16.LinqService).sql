BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @arr Bytea -- Binary
SET     @arr = NULL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

