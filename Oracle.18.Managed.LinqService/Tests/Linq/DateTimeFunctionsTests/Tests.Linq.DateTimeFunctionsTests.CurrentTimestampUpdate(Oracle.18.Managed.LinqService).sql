BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

UPDATE
	"LinqDataTypes" p
SET
	"BoolValue" = 1,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	p.ID = 100000

