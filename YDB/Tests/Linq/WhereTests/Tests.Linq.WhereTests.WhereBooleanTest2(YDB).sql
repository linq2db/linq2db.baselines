-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.BoolValue as BoolValue,
	t1.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t1

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	(t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND
	t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT ((t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = true AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = true AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND
	t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND
	t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND t.NullableBoolValue = false AND
	t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND
	t.Id > 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue,
	t.NullableBoolValue as NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (NOT t.BoolValue AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND t.Id > 0)

