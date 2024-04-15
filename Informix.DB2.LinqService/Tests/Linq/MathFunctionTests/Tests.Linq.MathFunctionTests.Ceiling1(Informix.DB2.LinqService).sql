BeforeExecute
-- Informix.DB2 Informix

SELECT
	t_1.c1
FROM
	(
		SELECT
			Ceil(-(t.MoneyValue + 1)) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> 0

