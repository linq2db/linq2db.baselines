BeforeExecute
-- Informix.DB2 Informix
DECLARE @year Integer(4) -- Int32
SET     @year = 2010

SELECT
	Mdy(t.ID, 1, @year::Int)
FROM
	LinqDataTypes t
WHERE
	Year(Mdy(t.ID, 1, @year::Int)) = 2010

