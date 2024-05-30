BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_1.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue <> 0 THEN 't'
				ELSE 'f'
			END::BOOLEAN as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 = 't'

