-- ClickHouse.Driver ClickHouse
INSERT INTO StorageTransparentRow
(
	Id,
	Marked,
	Plain
)
VALUES
(
	1,
	5,
	5
)

-- ClickHouse.Driver ClickHouse
INSERT INTO StorageTransparentRow
(
	Id,
	Marked,
	Plain
)
VALUES
(
	2,
	6,
	7
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	StorageTransparentRow r
WHERE
	r.Marked = r.Plain

-- ClickHouse.Driver ClickHouse
SELECT
	r.Marked + r.Plain
FROM
	StorageTransparentRow r
ORDER BY
	r.Id

