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
	Coalesce(r.BooleanN, True)

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
	Coalesce(r.BooleanN, False)

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

