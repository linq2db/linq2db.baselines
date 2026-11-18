-- PostgreSQL.9.2 PostgreSQL
DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

