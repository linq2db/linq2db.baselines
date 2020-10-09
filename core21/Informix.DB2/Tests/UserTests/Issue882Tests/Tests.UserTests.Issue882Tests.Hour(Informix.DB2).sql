BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Mod((t.DateTimeValue::datetime Hour to Hour)::char(3)::int, 7)
FROM
	LinqDataTypes t

