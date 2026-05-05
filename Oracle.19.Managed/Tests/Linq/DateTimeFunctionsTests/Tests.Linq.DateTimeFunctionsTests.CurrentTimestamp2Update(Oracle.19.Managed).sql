-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE
	"LinqDataTypes" p
SET
	"BoolValue" = 1,
	"DateTimeValue" = LOCALTIMESTAMP
WHERE
	p.ID = 100000

