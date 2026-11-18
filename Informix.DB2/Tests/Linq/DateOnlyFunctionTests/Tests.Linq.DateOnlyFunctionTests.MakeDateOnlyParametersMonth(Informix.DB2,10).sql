-- Informix.DB2 Informix
DECLARE @month Integer(4) -- Int32
SET     @month = 10

SELECT
	Mdy(@month::Int, 1, 2010 + t.ID)
FROM
	LinqDataTypes t

