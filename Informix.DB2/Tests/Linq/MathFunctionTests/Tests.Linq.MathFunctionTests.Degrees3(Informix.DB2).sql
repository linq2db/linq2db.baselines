BeforeExecute
-- Informix.DB2 Informix

SELECT
	t_1.c1
FROM
	(
		SELECT
			t.MoneyValue::Int::Float * 57.295779513082323 as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1::Float <> 0.10000000000000001

