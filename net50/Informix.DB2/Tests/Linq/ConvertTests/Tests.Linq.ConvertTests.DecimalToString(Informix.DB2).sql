BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Char(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	CHAR_LENGTH(To_Char(t.MoneyValue)) > 0

