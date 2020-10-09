BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Cast(Extend(t.DateTimeValue, hour to second) as Char(8))
FROM
	LinqDataTypes t

