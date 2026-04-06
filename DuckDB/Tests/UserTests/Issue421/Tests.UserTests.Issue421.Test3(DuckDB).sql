-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $BlobValue Binary(3)
SET     $BlobValue = '\x01\x02\x03'::BLOB

INSERT INTO BlobClass
(
	Id,
	BlobValue
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($BlobValue AS BLOB)
)

-- DuckDB

SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

-- DuckDB

SELECT
	t1.Id,
	t1.BlobValue
FROM
	BlobClass t1
WHERE
	t1.Id = 1
LIMIT 1

