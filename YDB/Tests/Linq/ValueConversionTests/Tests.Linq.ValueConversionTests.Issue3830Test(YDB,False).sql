-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $Bool1 AND r.Bool2 IS NULL AND r.Bool3 IS NULL

-- YDB Ydb
DECLARE $true_value Text(1) -- AnsiStringFixedLength
SET     $true_value = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $true_value AND r.Bool2 IS NULL AND r.Bool3 IS NULL

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 IS NULL AND r.Bool1 = $Bool1 AND r.Bool2 IS NULL

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = $Bool1 AND r.Bool3 IS NULL

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'N'u
DECLARE $Bool3 Text(1) -- AnsiStringFixedLength
SET     $Bool3 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $Bool1 AND r.Bool2 IS NULL AND r.Bool3 = $Bool3

-- YDB Ydb
DECLARE $true_value Text(1) -- AnsiStringFixedLength
SET     $true_value = 'Y'u
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'N'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = $true_value AND r.Bool1 = $Bool1 AND r.Bool2 IS NULL

-- YDB Ydb
DECLARE $false_value Text(1) -- AnsiStringFixedLength
SET     $false_value = 'N'u
DECLARE $Bool3 Text(1) -- AnsiStringFixedLength
SET     $Bool3 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $false_value AND r.Bool2 IS NULL AND r.Bool3 = $Bool3

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'N'u
DECLARE $Bool3 Text(1) -- AnsiStringFixedLength
SET     $Bool3 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = $Bool1 AND r.Bool3 = $Bool3

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'N'u
DECLARE $Bool2 Text(1) -- AnsiStringFixedLength
SET     $Bool2 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $Bool1 AND r.Bool2 = $Bool2 AND r.Bool3 IS NULL

-- YDB Ydb
DECLARE $false_value Text(1) -- AnsiStringFixedLength
SET     $false_value = 'N'u
DECLARE $Bool2 Text(1) -- AnsiStringFixedLength
SET     $Bool2 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $false_value AND r.Bool2 = $Bool2 AND r.Bool3 IS NULL

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'N'u
DECLARE $Bool2 Text(1) -- AnsiStringFixedLength
SET     $Bool2 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 IS NULL AND r.Bool1 = $Bool1 AND r.Bool2 = $Bool2

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'N'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = $Bool1 AND r.Bool3 IS NULL

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'Y'u
DECLARE $Bool2 Text(1) -- AnsiStringFixedLength
SET     $Bool2 = 'N'u
DECLARE $Bool3 Text(1) -- AnsiStringFixedLength
SET     $Bool3 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $Bool1 AND r.Bool2 = $Bool2 AND r.Bool3 = $Bool3

-- YDB Ydb
DECLARE $true_value Text(1) -- AnsiStringFixedLength
SET     $true_value = 'Y'u
DECLARE $Bool2 Text(1) -- AnsiStringFixedLength
SET     $Bool2 = 'N'u
DECLARE $Bool3 Text(1) -- AnsiStringFixedLength
SET     $Bool3 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = $true_value AND r.Bool2 = $Bool2 AND r.Bool3 = $Bool3

-- YDB Ydb
DECLARE $true_value Text(1) -- AnsiStringFixedLength
SET     $true_value = 'Y'u
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'Y'u
DECLARE $Bool2 Text(1) -- AnsiStringFixedLength
SET     $Bool2 = 'N'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = $true_value AND r.Bool1 = $Bool1 AND r.Bool2 = $Bool2

-- YDB Ydb
DECLARE $Bool1 Text(1) -- AnsiStringFixedLength
SET     $Bool1 = 'Y'u
DECLARE $Bool3 Text(1) -- AnsiStringFixedLength
SET     $Bool3 = 'Y'u

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = $Bool1 AND r.Bool3 = $Bool3

