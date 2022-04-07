BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN t.MoneyValue <> 0 THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	LinqDataTypes t
WHERE
	t.MoneyValue <> 0

