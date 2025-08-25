BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.ID
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(To_Char(p.ID::SmallInt) || '.') > 1

