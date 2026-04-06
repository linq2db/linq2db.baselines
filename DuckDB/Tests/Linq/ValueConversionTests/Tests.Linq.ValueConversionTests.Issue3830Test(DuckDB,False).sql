-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($Bool1 AS VARCHAR) AND r.Bool2 IS NULL AND
	r.Bool3 IS NULL

-- DuckDB
DECLARE $true_value NVarChar(1) -- String
SET     $true_value = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($true_value AS VARCHAR) AND r.Bool2 IS NULL AND
	r.Bool3 IS NULL

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 IS NULL AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool2 IS NULL

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool3 IS NULL

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'N'
DECLARE $Bool3 NVarChar(1) -- String
SET     $Bool3 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($Bool1 AS VARCHAR) AND r.Bool2 IS NULL AND
	r.Bool3 = CAST($Bool3 AS VARCHAR)

-- DuckDB
DECLARE $true_value NVarChar(1) -- String
SET     $true_value = 'Y'
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'N'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = CAST($true_value AS VARCHAR) AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool2 IS NULL

-- DuckDB
DECLARE $false_value NVarChar(1) -- String
SET     $false_value = 'N'
DECLARE $Bool3 NVarChar(1) -- String
SET     $Bool3 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($false_value AS VARCHAR) AND r.Bool2 IS NULL AND
	r.Bool3 = CAST($Bool3 AS VARCHAR)

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'N'
DECLARE $Bool3 NVarChar(1) -- String
SET     $Bool3 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool3 = CAST($Bool3 AS VARCHAR)

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'N'
DECLARE $Bool2 NVarChar(1) -- String
SET     $Bool2 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($Bool1 AS VARCHAR) AND r.Bool2 = CAST($Bool2 AS VARCHAR) AND
	r.Bool3 IS NULL

-- DuckDB
DECLARE $false_value NVarChar(1) -- String
SET     $false_value = 'N'
DECLARE $Bool2 NVarChar(1) -- String
SET     $Bool2 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($false_value AS VARCHAR) AND r.Bool2 = CAST($Bool2 AS VARCHAR) AND
	r.Bool3 IS NULL

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'N'
DECLARE $Bool2 NVarChar(1) -- String
SET     $Bool2 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 IS NULL AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool2 = CAST($Bool2 AS VARCHAR)

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'N'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool3 IS NULL

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'Y'
DECLARE $Bool2 NVarChar(1) -- String
SET     $Bool2 = 'N'
DECLARE $Bool3 NVarChar(1) -- String
SET     $Bool3 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($Bool1 AS VARCHAR) AND r.Bool2 = CAST($Bool2 AS VARCHAR) AND
	r.Bool3 = CAST($Bool3 AS VARCHAR)

-- DuckDB
DECLARE $true_value NVarChar(1) -- String
SET     $true_value = 'Y'
DECLARE $Bool2 NVarChar(1) -- String
SET     $Bool2 = 'N'
DECLARE $Bool3 NVarChar(1) -- String
SET     $Bool3 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = CAST($true_value AS VARCHAR) AND r.Bool2 = CAST($Bool2 AS VARCHAR) AND
	r.Bool3 = CAST($Bool3 AS VARCHAR)

-- DuckDB
DECLARE $true_value NVarChar(1) -- String
SET     $true_value = 'Y'
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'Y'
DECLARE $Bool2 NVarChar(1) -- String
SET     $Bool2 = 'N'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = CAST($true_value AS VARCHAR) AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool2 = CAST($Bool2 AS VARCHAR)

-- DuckDB
DECLARE $Bool1 NVarChar(1) -- String
SET     $Bool1 = 'Y'
DECLARE $Bool3 NVarChar(1) -- String
SET     $Bool3 = 'Y'

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = CAST($Bool1 AS VARCHAR) AND
	r.Bool3 = CAST($Bool3 AS VARCHAR)

