-- ClickHouse.Driver ClickHouse
INSERT INTO SeparatelyDeclaredRowA
(
	Id,
	Span
)
VALUES
(
	1,
	toInt64(54000000000)
)

-- ClickHouse.Driver ClickHouse
INSERT INTO SeparatelyDeclaredRowB
(
	Id,
	Span
)
VALUES
(
	2,
	toInt64(54000000000)
)

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Span
FROM
	(
		SELECT
			r.Id as Id,
			r.Span as Span
		FROM
			SeparatelyDeclaredRowA r
		UNION ALL
		SELECT
			r_1.Id as Id,
			r_1.Span as Span
		FROM
			SeparatelyDeclaredRowB r_1
	) t1
ORDER BY
	t1.Id

