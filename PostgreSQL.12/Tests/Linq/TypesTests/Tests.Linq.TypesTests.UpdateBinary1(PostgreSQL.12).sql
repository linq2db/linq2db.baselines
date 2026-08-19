-- PostgreSQL.12 PostgreSQL12
DECLARE @BinaryValue Bytea(5) -- Binary
SET     @BinaryValue = E'\\x0102030405'::bytea

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = 1

-- PostgreSQL.12 PostgreSQL12
SELECT
	t."BinaryValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1

