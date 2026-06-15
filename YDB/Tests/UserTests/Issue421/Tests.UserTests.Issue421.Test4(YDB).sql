-- YDB Ydb

INSERT INTO BlobClass
(
	Id,
	BlobValue
)
VALUES
(
	1,
	'\x01\x02\x03's
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.BlobValue as BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.BlobValue as BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

