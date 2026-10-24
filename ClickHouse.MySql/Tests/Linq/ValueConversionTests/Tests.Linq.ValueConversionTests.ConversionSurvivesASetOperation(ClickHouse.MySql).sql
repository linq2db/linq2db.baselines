-- ClickHouse.MySql ClickHouse
INSERT INTO ScaledRow
(
	Id,
	Span
)
VALUES
(
	1,
	toInt64(5400)
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Source,
	t1.Span
FROM
	(
		SELECT
			toInt32(1) as Source,
			r.Span as Span
		FROM
			ScaledRow r
		UNION ALL
		SELECT
			toInt32(2) as Source,
			r_1.Span as Span
		FROM
			ScaledRow r_1
	) t1
ORDER BY
	t1.Source

