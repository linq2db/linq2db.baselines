BeforeExecute
-- Informix.DB2 Informix

UPDATE
	LinqDataTypes p
SET
	BoolValue = 't',
	DateTimeValue = CURRENT
WHERE
	p.ID = 100000

