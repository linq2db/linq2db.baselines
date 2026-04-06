-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '6579.64648'

SELECT
	CAST($value AS DECIMAL(38, 18))
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '6579.64648'

SELECT
	CAST(CAST($value AS FLOAT) AS DECIMAL)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(18) -- String
SET     $value = '6579.6464800000003'

SELECT
	CAST(CAST($value AS DOUBLE) AS DECIMAL)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '6579.64648'

SELECT
	CAST(CAST($value AS DECIMAL(38, 18)) AS FLOAT)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '6579.64648'

SELECT
	CAST($value AS FLOAT)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(18) -- String
SET     $value = '6579.6464800000003'

SELECT
	CAST(CAST($value AS DOUBLE) AS FLOAT)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '6579.64648'

SELECT
	CAST(CAST($value AS DECIMAL(38, 18)) AS DOUBLE)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '6579.64648'

SELECT
	CAST(CAST($value AS FLOAT) AS DOUBLE)
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DECLARE $value NVarChar(18) -- String
SET     $value = '6579.6464800000003'

SELECT
	CAST($value AS DOUBLE)
FROM
	LinqDataTypes t1
LIMIT 1

