BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @month Integer(4) -- Int32
SET     @month = 1

SELECT
	Mdy(@month::Int, 1, 2010 + t.ID)
FROM
	LinqDataTypes t

