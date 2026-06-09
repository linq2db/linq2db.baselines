-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = (r.Value4 = r.Value5)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value5) = (r.Value4 = r.Value2) OR r.Value5 IS NULL AND r.Value4 IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> (r.Value4 = r.Value5) OR r.Value4 IS NULL OR
	r.Value5 IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value5) <> (r.Value4 = r.Value2) OR r.Value5 IS NULL AND r.Value4 IS NOT NULL OR
	r.Value5 IS NOT NULL AND r.Value4 IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = (r.Value2 = r.Value1)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> (r.Value2 = r.Value1)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 = r.Value5) = (r.Value5 = r.Value4) OR (r.Value4 IS NULL OR r.Value5 IS NULL) AND (r.Value5 IS NULL OR r.Value4 IS NULL)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 = r.Value5) <> (r.Value5 = r.Value4) OR (r.Value4 IS NULL OR r.Value5 IS NULL) AND NOT (r.Value5 IS NULL OR r.Value4 IS NULL) OR
	NOT (r.Value4 IS NULL OR r.Value5 IS NULL) AND (r.Value5 IS NULL OR r.Value4 IS NULL)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = ((r.Value4 <> r.Value5))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value5 AND r.Value5 IS NOT NULL) = ((r.Value4 <> r.Value2))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> ((r.Value4 <> r.Value5)) OR
	r.Value4 IS NULL OR r.Value5 IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value5 AND r.Value5 IS NOT NULL) <> ((r.Value4 <> r.Value2)) OR
	r.Value4 IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = ((r.Value2 <> r.Value1))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> ((r.Value2 <> r.Value1))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 >= r.Value5 AND r.Value4 IS NOT NULL AND r.Value5 IS NOT NULL) = ((r.Value5 <> r.Value4))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 >= r.Value5) <> ((r.Value5 <> r.Value4)) OR
	r.Value5 IS NULL OR r.Value4 IS NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

