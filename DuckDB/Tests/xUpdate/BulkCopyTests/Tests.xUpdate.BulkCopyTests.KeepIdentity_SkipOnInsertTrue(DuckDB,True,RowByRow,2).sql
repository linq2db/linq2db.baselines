-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 0

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	CAST($Value AS INTEGER)
)
RETURNING 
	ID

-- DuckDB
DECLARE $lastId  -- Int32
SET     $lastId = 3

DELETE FROM
	AllTypes t1
WHERE
	t1.ID >= CAST($lastId AS INTEGER)

