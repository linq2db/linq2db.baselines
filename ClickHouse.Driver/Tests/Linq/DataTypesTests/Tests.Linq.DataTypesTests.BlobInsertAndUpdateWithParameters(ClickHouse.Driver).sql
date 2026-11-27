-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

-- ClickHouse.Driver ClickHouse
ALTER TABLE
	BlobValueEntity
UPDATE
	BlobValue = '\x03\x02\x01'
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

