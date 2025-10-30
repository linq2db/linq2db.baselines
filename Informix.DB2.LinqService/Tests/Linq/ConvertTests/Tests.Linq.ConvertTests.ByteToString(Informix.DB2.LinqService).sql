BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	To_Char(p.ID::SmallInt)
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(To_Char(p.ID::SmallInt) || '.') > 1

