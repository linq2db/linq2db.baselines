-- Informix.DB2 Informix

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
	Nvl(r.BooleanN, 't'::BOOLEAN)

-- Informix.DB2 Informix

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

-- Informix.DB2 Informix

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
	Nvl(r.BooleanN, 'f'::BOOLEAN)

-- Informix.DB2 Informix

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

-- Informix.DB2 Informix

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
	Nvl(r.BooleanN, CASE
		WHEN Mod(r.Id, 2) = 1 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END)

-- Informix.DB2 Informix

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

