BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"LinqDataTypes" p
SET
	"BoolValue" = 1,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	p.ID = 100000

