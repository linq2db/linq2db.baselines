-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"LinqDataTypes" p
SET
	"BoolValue" = 1,
	"DateTimeValue" = LOCALTIMESTAMP
WHERE
	p.ID = 100000

