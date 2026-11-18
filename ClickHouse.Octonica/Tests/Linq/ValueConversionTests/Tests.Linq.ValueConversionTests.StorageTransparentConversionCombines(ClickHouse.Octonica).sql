-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	StorageTransparentRow r
WHERE
	r.Marked = r.Plain

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Marked + r.Plain
FROM
	StorageTransparentRow r
ORDER BY
	r.Id

