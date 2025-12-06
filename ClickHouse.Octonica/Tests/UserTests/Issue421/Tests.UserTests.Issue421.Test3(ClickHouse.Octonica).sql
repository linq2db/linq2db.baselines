-- ClickHouse.Octonica ClickHouse

INSERT INTO BlobClass
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
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

