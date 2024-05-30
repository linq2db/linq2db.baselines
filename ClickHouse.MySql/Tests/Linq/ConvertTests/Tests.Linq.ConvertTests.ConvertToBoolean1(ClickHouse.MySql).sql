BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue <> 0 THEN true
				ELSE false
			END as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 = true

