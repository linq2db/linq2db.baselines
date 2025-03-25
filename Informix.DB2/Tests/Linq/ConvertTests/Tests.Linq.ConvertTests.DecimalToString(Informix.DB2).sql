BeforeExecute
-- Informix.DB2 Informix

SELECT
	RTRIM(REPLACE(To_Char(p.MoneyValue), To_Char(','), To_Char('.')), '0.')
FROM
	LinqDataTypes p
WHERE
	LENGTH(To_Char(p.MoneyValue) || '.') > 1

