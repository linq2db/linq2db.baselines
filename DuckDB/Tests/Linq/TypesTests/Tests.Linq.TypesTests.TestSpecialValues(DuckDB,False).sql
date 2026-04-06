-- DuckDB

SELECT
	MAX(t1.ID)
FROM
	AllTypes t1

-- DuckDB
DECLARE $real NVarChar(3) -- String
SET     $real = 'NaN'
DECLARE $dbl NVarChar(3) -- String
SET     $dbl = 'NaN'

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1000,
	CAST($real AS FLOAT),
	CAST($dbl AS DOUBLE)
)

-- DuckDB
DECLARE $real NVarChar(9) -- String
SET     $real = '-Infinity'
DECLARE $dbl NVarChar(9) -- String
SET     $dbl = '-Infinity'

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1001,
	CAST($real AS FLOAT),
	CAST($dbl AS DOUBLE)
)

-- DuckDB
DECLARE $real NVarChar(8) -- String
SET     $real = 'Infinity'
DECLARE $dbl NVarChar(8) -- String
SET     $dbl = 'Infinity'

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1002,
	CAST($real AS FLOAT),
	CAST($dbl AS DOUBLE)
)

-- DuckDB
DECLARE $maxID  -- Int32
SET     $maxID = 2

SELECT
	t1.floatDataType,
	t1.doubleDataType
FROM
	AllTypes t1
WHERE
	t1.ID > CAST($maxID AS INTEGER)
ORDER BY
	t1.ID

