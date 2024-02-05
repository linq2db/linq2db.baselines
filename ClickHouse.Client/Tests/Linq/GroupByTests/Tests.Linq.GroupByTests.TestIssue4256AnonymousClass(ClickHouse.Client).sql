BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.IsActive,
	t1.Other
FROM
	(
		SELECT
			true as IsActive,
			toBool(it.SmallIntValue) as Other
		FROM
			LinqDataTypes it
	) t1
GROUP BY
	t1.IsActive,
	t1.Other

