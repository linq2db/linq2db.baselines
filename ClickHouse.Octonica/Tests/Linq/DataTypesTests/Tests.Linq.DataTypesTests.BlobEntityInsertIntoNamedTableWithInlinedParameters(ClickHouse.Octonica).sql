-- ClickHouse.Octonica ClickHouse
INSERT INTO BlobValueEntity
(
	Id,
	BlobValue
)
VALUES
(
	1,
	'\x01\x02\x03'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

