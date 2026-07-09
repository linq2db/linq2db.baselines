-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

