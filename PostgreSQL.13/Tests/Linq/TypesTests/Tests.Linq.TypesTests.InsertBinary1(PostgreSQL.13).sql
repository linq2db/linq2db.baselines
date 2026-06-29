-- PostgreSQL.13 PostgreSQL13

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

-- PostgreSQL.13 PostgreSQL13
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

-- PostgreSQL.13 PostgreSQL13

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

