BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @BoolValue Boolean
SET     @BoolValue = True

UPDATE
	"LinqDataTypes"
SET
	"BoolValue" = :BoolValue,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	"LinqDataTypes"."ID" = 100000

