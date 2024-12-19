BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue <> 4.5 THEN 't'::BOOLEAN
				ELSE 'f'::BOOLEAN
			END::BOOLEAN as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	NOT p.c1

