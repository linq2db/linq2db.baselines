﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @BinaryValue Bytea(5) -- Binary
SET     @BinaryValue = E'\\x0102030405'

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = 1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t."BinaryValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1

