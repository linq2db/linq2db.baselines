-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $BlobValue Binary(3)
SET     $BlobValue = '\x01\x02\x03'::BLOB

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
DECLARE $BlobValue Binary(3)
SET     $BlobValue = '\x03\x02\x01'::BLOB

UPDATE
	BlobValueEntity
SET
	BlobValue = $BlobValue
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

