BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue <> 0 THEN true
				ELSE false
			END as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 = true

