BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_1.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue <> 4.5 THEN 't'
				ELSE 'f'
			END::BOOLEAN as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 = 'f'

