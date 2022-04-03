BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN t.MoneyValue <> 4.5 THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	LinqDataTypes t
WHERE
	t.MoneyValue = 4.5

