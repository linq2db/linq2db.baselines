-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y'u AND r.Bool2 IS NULL AND r.Bool3 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y'u AND r.Bool2 IS NULL AND r.Bool3 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 IS NULL AND r.Bool1 = 'Y'u AND r.Bool2 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = 'Y'u AND r.Bool3 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N'u AND r.Bool2 IS NULL AND r.Bool3 = 'Y'u

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = 'Y'u AND r.Bool1 = 'N'u AND r.Bool2 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N'u AND r.Bool2 IS NULL AND r.Bool3 = 'Y'u

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = 'N'u AND r.Bool3 = 'Y'u

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N'u AND r.Bool2 = 'Y'u AND r.Bool3 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N'u AND r.Bool2 = 'Y'u AND r.Bool3 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 IS NULL AND r.Bool1 = 'N'u AND r.Bool2 = 'Y'u

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = 'N'u AND r.Bool3 IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y'u AND r.Bool2 = 'N'u AND r.Bool3 = 'Y'u

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y'u AND r.Bool2 = 'N'u AND r.Bool3 = 'Y'u

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = 'Y'u AND r.Bool1 = 'Y'u AND r.Bool2 = 'N'u

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Bool1 as Bool1,
	r.Bool2 as Bool2,
	r.Bool3 as Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = 'Y'u AND r.Bool3 = 'Y'u

