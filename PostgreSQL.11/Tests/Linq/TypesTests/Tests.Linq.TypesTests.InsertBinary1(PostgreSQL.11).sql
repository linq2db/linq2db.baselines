-- PostgreSQL.11 PostgreSQL
DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

-- PostgreSQL.11 PostgreSQL
DECLARE @data Bytea -- Binary
SET     @data = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BinaryValue",
	"BoolValue"
)
VALUES
(
	1001,
	:data,
	True
)

-- PostgreSQL.11 PostgreSQL
DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

