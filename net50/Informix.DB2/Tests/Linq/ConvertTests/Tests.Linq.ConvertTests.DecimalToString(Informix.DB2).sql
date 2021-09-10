BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Char(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	Length(To_Char(t.MoneyValue)) > 0

