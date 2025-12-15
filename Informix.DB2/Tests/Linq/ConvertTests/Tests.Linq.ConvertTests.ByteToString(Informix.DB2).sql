-- Informix.DB2 Informix

SELECT
	To_Char(p.ID::SmallInt)
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(To_Char(p.ID::SmallInt) || '.') > 1

