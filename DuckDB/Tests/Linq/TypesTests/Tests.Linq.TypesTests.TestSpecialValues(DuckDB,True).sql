-- DuckDB

SELECT
	MAX(t1.ID)
FROM
	AllTypes t1

-- DuckDB

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1000,
	'NaN'::FLOAT,
	'NaN'::DOUBLE
)

-- DuckDB

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1001,
	'-Infinity'::FLOAT,
	'-Infinity'::DOUBLE
)

-- DuckDB

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1002,
	'Infinity'::FLOAT,
	'Infinity'::DOUBLE
)

-- DuckDB

SELECT
	t1.floatDataType,
	t1.doubleDataType
FROM
	AllTypes t1
WHERE
	t1.ID > 2
ORDER BY
	t1.ID

