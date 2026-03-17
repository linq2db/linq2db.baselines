-- Informix.DB2 Informix

SELECT
	RTRIM(Replace(To_Char(p.MoneyValue), ',', '.'), '0.')
FROM
	LinqDataTypes p
WHERE
	CHAR_LENGTH(To_Char(p.MoneyValue) || '.') > 1

