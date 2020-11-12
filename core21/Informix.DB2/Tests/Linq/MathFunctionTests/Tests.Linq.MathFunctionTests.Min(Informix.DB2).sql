BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t.MoneyValue < 5 THEN t.MoneyValue
		ELSE 5
	END
FROM
	LinqDataTypes t
WHERE
	(CASE
		WHEN t.MoneyValue < 5 THEN t.MoneyValue
		ELSE 5
	END <> 0 OR CASE
		WHEN t.MoneyValue < 5 THEN t.MoneyValue
		ELSE 5
	END IS NULL)

