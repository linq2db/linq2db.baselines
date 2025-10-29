-- Informix.DB2 Informix

SELECT
	p.ID
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(To_Char(p.ID::SmallInt) || '.') > 1

