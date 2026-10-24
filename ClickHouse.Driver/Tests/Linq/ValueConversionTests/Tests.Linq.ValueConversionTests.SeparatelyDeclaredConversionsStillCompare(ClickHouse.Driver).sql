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
	x.Id
FROM
	SeparatelyDeclaredRowA x,
	SeparatelyDeclaredRowB y
WHERE
	x.Span = y.Span

