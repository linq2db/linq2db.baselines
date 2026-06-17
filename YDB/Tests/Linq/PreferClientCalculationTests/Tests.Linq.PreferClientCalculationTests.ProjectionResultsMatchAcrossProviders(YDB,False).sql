-- YDB Ydb

SELECT
	e.Id as Id,
	e.Value1 + 12345 as Calc
FROM
	ClientCalcEntity e

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Name as Name
FROM
	ClientCalcEntity t1

-- YDB Ydb

SELECT
	CASE
		WHEN e.Id > 1 THEN e.Value1
		ELSE e.Value2
	END as c1
FROM
	ClientCalcEntity e

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Name as Name
FROM
	ClientCalcEntity t1

-- YDB Ydb

SELECT
	-e.Value1 as c1
FROM
	ClientCalcEntity e

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Name as Name
FROM
	ClientCalcEntity t1

-- YDB Ydb

SELECT
	e.Value1 + ABS(e.Value2) as c1
FROM
	ClientCalcEntity e

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Name as Name
FROM
	ClientCalcEntity t1

