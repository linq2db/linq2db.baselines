-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 10

INSERT INTO Issue681Table4
(
	"Value"
)
VALUES
(
	CAST($Value AS INTEGER)
)
RETURNING 
	ID

