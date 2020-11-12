BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t.MoneyValue > 0 THEN 1
		WHEN t.MoneyValue < 0 THEN -1
		ELSE 0
	END
FROM
	LinqDataTypes t
WHERE
	(CASE
		WHEN t.MoneyValue > 0 THEN 1
		WHEN t.MoneyValue < 0 THEN -1
		ELSE 0
	END <> 0 OR CASE
		WHEN t.MoneyValue > 0 THEN 1
		WHEN t.MoneyValue < 0 THEN -1
		ELSE 0
	END IS NULL)

