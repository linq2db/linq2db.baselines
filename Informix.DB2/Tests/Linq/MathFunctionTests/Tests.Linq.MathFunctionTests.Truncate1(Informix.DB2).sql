BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			Trunc(p.MoneyValue, 0) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0.1

