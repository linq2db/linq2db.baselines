BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Char(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	Length(To_Char(p.MoneyValue)) > 0

