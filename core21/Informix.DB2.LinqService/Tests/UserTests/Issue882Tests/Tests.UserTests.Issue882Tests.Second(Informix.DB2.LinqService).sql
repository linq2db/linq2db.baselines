BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Mod((t.DateTimeValue::datetime Second to Second)::char(3)::int, 7)
FROM
	LinqDataTypes t

