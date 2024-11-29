BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue <> 0 THEN 't'
				ELSE 'f'
			END::BOOLEAN as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 = 't'

