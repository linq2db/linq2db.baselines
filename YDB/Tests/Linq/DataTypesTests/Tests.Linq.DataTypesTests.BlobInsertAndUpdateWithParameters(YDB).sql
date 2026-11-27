-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE BlobValue Bytes(3) -- Binary
SET     BlobValue = '\x01\x02\x03's

INSERT INTO BlobValueEntity
(
	Id,
	BlobValue
)
VALUES
(
	$Id,
	$BlobValue
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
DECLARE BlobValue Bytes(3) -- Binary
SET     BlobValue = '\x03\x02\x01's

UPDATE
	BlobValueEntity
SET
	BlobValue = $BlobValue
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

