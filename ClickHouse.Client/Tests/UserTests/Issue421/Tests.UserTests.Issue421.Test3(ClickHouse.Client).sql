BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

