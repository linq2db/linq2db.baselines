-- DuckDB

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

-- DuckDB
DECLARE $data Binary
SET     $data = NULL

INSERT INTO LinqDataTypes
(
	ID,
	BinaryValue,
	BoolValue
)
VALUES
(
	1001,
	$data,
	True
)

-- DuckDB

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

