-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 0

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	$Value
)
RETURNING 
	ID

-- DuckDB
DECLARE $lastId INTEGER -- Int32
SET     $lastId = 3

DELETE FROM
	AllTypes t1
WHERE
	t1.ID >= $lastId

