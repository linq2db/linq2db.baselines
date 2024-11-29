BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			Trunc((-p.MoneyValue)::Float, 0) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0.10000000000000001

