-- Informix.DB2 Informix
DECLARE @flag Char(1) -- StringFixedLength
SET     @flag = 't'

SELECT
	t.ID
FROM
	LinqDataTypes t
WHERE
	@flag::BOOLEAN IN (t.BoolValue)

