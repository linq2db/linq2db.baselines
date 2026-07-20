-- Informix.DB2 Informix
DECLARE @year Integer(4) -- Int32
SET     @year = 2010
DECLARE @year_1 Integer(4) -- Int32
SET     @year_1 = 2010

SELECT
	Mdy(t.ID, 1, @year::Int)
FROM
	LinqDataTypes t
WHERE
	Year(Mdy(t.ID, 1, @year_1::Int)) = 2010

