BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @BoolValue Boolean
SET     @BoolValue = True

UPDATE
	"LinqDataTypes"
SET
	"BoolValue" = :BoolValue,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	"LinqDataTypes"."ID" = 100000

