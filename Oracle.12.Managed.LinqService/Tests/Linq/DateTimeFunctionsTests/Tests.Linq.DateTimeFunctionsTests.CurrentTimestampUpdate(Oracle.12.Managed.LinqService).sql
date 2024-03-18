BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BoolValue Int16
SET     @BoolValue = 1

UPDATE
	"LinqDataTypes" p
SET
	"BoolValue" = :BoolValue,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	p.ID = 100000

