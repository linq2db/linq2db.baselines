BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t.MoneyValue - 4.5 <> 0
			THEN 't'
		ELSE 'f'
	END
FROM
	LinqDataTypes t
WHERE
	(t.MoneyValue = 4.5)

