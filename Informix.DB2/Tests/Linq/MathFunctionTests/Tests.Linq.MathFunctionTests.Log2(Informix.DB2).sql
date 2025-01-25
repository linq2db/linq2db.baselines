BeforeExecute
-- Informix.DB2 Informix

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(LogN(t.MoneyValue::Float) / 0.69314718055994529) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> 0.10000000000000001

