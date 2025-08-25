BeforeExecute
-- Informix.DB2 Informix (asynchronously)

UPDATE
	LinqDataTypes p
SET
	BoolValue = 't'::BOOLEAN,
	DateTimeValue = CURRENT
WHERE
	p.ID = 100000

