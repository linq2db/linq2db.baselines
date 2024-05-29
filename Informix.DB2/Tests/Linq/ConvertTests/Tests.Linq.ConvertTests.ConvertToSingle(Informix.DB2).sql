BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_1.c1
FROM
	(
		SELECT
			p.MoneyValue::Real as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > 0

