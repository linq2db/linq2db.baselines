BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t_1.c1 * 2 = Round(t_1.c1 * 2, 5) AND t_1.c1 <> Round(t_1.c1, 5)
			THEN Round(t_1.c1 / 2, 5) * 2
		ELSE Round(t_1.c1, 5)
	END
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue::Float * 2 = Round(t.MoneyValue::Float * 2, 1) AND t.MoneyValue::Float <> Round(t.MoneyValue::Float, 1)
					THEN Round(t.MoneyValue::Float / 2, 1) * 2
				ELSE Round(t.MoneyValue::Float, 1)
			END as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> 0

