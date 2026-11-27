-- YDB Ydb
INSERT INTO BlobValueEntity
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
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

-- YDB Ydb
UPDATE
	BlobValueEntity
SET
	BlobValue = '\x03\x02\x01's
WHERE
	BlobValueEntity.Id = 1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.BlobValue as BlobValue
FROM
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

