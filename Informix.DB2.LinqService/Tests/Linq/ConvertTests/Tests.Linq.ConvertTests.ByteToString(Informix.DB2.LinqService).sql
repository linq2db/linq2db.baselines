BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ID
FROM
	LinqDataTypes p
WHERE
	Length(To_Char(p.ID::SmallInt) || '.') > 1

