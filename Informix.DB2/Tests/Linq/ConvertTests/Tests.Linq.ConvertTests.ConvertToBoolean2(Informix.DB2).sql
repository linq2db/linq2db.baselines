BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue <> 4.5 THEN 't'
				ELSE 'f'
			END::BOOLEAN as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	NOT p.c1

