-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r."Boolean",
	r.BooleanN,
	r.Int32,
	r.Int32N,
	r."Decimal",
	r.DecimalN,
	r."Double",
	r.DoubleN
FROM
	BooleanTable r
WHERE
	Coalesce(r.BooleanN, CAST($True AS BOOLEAN))

-- DuckDB

SELECT
	t1.Id,
	t1."Boolean",
	t1.BooleanN,
	t1.Int32,
	t1.Int32N,
	t1."Decimal",
	t1.DecimalN,
	t1."Double",
	t1.DoubleN
FROM
	BooleanTable t1

-- DuckDB
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r."Boolean",
	r.BooleanN,
	r.Int32,
	r.Int32N,
	r."Decimal",
	r.DecimalN,
	r."Double",
	r.DoubleN
FROM
	BooleanTable r
WHERE
	Coalesce(r.BooleanN, CAST($False AS BOOLEAN))

-- DuckDB

SELECT
	t1.Id,
	t1."Boolean",
	t1.BooleanN,
	t1.Int32,
	t1.Int32N,
	t1."Decimal",
	t1.DecimalN,
	t1."Double",
	t1.DoubleN
FROM
	BooleanTable t1

-- DuckDB

SELECT
	r.Id,
	r."Boolean",
	r.BooleanN,
	r.Int32,
	r.Int32N,
	r."Decimal",
	r.DecimalN,
	r."Double",
	r.DoubleN
FROM
	BooleanTable r
WHERE
	Coalesce(r.BooleanN, r.Id % 2 = 1)

-- DuckDB

SELECT
	t1.Id,
	t1."Boolean",
	t1.BooleanN,
	t1.Int32,
	t1.Int32N,
	t1."Decimal",
	t1.DecimalN,
	t1."Double",
	t1.DoubleN
FROM
	BooleanTable t1

