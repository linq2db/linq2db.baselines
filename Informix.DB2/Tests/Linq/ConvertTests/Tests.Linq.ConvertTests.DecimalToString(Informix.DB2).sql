BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Char(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(To_Char(p.MoneyValue)) > 0

