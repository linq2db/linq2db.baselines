-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

