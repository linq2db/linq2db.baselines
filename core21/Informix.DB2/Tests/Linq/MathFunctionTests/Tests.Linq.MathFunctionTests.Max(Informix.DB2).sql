BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t.MoneyValue > 5.1 THEN t.MoneyValue
		ELSE 5.1
	END
FROM
	LinqDataTypes t
WHERE
	(CASE
		WHEN t.MoneyValue > 5.1 THEN t.MoneyValue
		ELSE 5.1
	END <> 0 OR CASE
		WHEN t.MoneyValue > 5.1 THEN t.MoneyValue
		ELSE 5.1
	END IS NULL)

