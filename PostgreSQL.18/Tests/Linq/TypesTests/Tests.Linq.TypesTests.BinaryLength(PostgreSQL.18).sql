BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @BinaryValue Bytea(5) -- Binary
SET     @BinaryValue = E'\\x0102030405'::bytea

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Length(t."BinaryValue")
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @BinaryValue Bytea -- Binary
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = 1

