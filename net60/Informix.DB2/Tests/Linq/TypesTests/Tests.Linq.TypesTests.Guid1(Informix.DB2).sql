BeforeExecute
-- Informix.DB2 Informix
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT
	p.GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = @GuidValue

