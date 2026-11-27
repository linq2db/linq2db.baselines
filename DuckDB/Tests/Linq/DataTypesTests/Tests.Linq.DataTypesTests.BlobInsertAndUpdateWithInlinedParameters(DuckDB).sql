-- DuckDB
INSERT INTO BlobValueEntity
(
	Id,
	BlobValue
)
VALUES
(
	1,
	'\x01\x02\x03'::BLOB
)

-- DuckDB
SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

-- DuckDB
UPDATE
	BlobValueEntity
SET
	BlobValue = '\x03\x02\x01'::BLOB
WHERE
	BlobValueEntity.Id = 1

-- DuckDB
SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobValueEntity t1
WHERE
	t1.Id = 1
LIMIT 1

