-- DuckDB

SELECT
	MAX(t1.ID)
FROM
	AllTypes t1

-- DuckDB
DECLARE $real  -- Single
SET     $real = 'NaN'::FLOAT
DECLARE $dbl  -- Double
SET     $dbl = 'NaN'::DOUBLE

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1000,
	$real,
	$dbl
)

-- DuckDB
DECLARE $real  -- Single
SET     $real = '-Infinity'::FLOAT
DECLARE $dbl  -- Double
SET     $dbl = '-Infinity'::DOUBLE

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1001,
	$real,
	$dbl
)

-- DuckDB
DECLARE $real  -- Single
SET     $real = 'Infinity'::FLOAT
DECLARE $dbl  -- Double
SET     $dbl = 'Infinity'::DOUBLE

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1002,
	$real,
	$dbl
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
	t1.ID > $maxID
ORDER BY
	t1.ID

