BeforeExecute
-- Oracle.Managed Oracle12

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BoolValue" = 1,
	"LinqDataTypes"."DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	"LinqDataTypes".ID = 100000

