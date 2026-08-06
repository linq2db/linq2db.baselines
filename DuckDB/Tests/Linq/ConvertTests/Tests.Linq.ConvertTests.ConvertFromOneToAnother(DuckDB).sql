-- DuckDB
DECLARE $value Decimal(9, 5)
SET     $value = 6579.64648

SELECT
	$value
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value  -- Single
SET     $value = '6579.64648'::FLOAT

SELECT
	CAST($value AS DECIMAL)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value  -- Double
SET     $value = 6579.6464800000003

SELECT
	CAST($value AS DECIMAL)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value Decimal(9, 5)
SET     $value = 6579.64648

SELECT
	CAST($value AS FLOAT)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value  -- Single
SET     $value = '6579.64648'::FLOAT

SELECT
	$value
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value  -- Double
SET     $value = 6579.6464800000003

SELECT
	CAST($value AS FLOAT)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value Decimal(9, 5)
SET     $value = 6579.64648

SELECT
	CAST($value AS DOUBLE)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value  -- Single
SET     $value = '6579.64648'::FLOAT

SELECT
	CAST($value AS DOUBLE)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value  -- Double
SET     $value = 6579.6464800000003

SELECT
	$value
FROM
	LinqDataTypes t1
LIMIT 1

