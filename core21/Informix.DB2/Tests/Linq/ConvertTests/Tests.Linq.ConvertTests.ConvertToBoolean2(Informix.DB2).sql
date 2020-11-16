BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN p.MoneyValue <> 4.5 THEN 't'
		ELSE 'f'
	END
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue = 4.5

