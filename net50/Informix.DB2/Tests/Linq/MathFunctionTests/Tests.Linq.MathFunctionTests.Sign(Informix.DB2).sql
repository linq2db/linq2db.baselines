BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN p.MoneyValue > 0 THEN 1
		WHEN p.MoneyValue < 0 THEN -1
		ELSE 0
	END
FROM
	LinqDataTypes p
WHERE
	CASE
		WHEN p.MoneyValue > 0 THEN 1
		WHEN p.MoneyValue < 0 THEN -1
		ELSE 0
	END <> 0

