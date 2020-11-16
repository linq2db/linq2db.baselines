BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN p.MoneyValue <> 0 THEN 't'
		ELSE 'f'
	END
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> 0

