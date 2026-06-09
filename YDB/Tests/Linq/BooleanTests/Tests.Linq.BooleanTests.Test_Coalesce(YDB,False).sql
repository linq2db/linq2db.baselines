-- YDB Ydb
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.`Boolean` as Boolean_1,
	r.BooleanN as BooleanN,
	r.Int32 as Int32,
	r.Int32N as Int32N,
	r.`Decimal` as Decimal_1,
	r.DecimalN as DecimalN,
	r.`Double` as Double_1,
	r.DoubleN as DoubleN
FROM
	BooleanTable r
WHERE
	Coalesce(r.BooleanN, $True)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Boolean` as Boolean_1,
	t1.BooleanN as BooleanN,
	t1.Int32 as Int32,
	t1.Int32N as Int32N,
	t1.`Decimal` as Decimal_1,
	t1.DecimalN as DecimalN,
	t1.`Double` as Double_1,
	t1.DoubleN as DoubleN
FROM
	BooleanTable t1

-- YDB Ydb
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.`Boolean` as Boolean_1,
	r.BooleanN as BooleanN,
	r.Int32 as Int32,
	r.Int32N as Int32N,
	r.`Decimal` as Decimal_1,
	r.DecimalN as DecimalN,
	r.`Double` as Double_1,
	r.DoubleN as DoubleN
FROM
	BooleanTable r
WHERE
	Coalesce(r.BooleanN, $False)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Boolean` as Boolean_1,
	t1.BooleanN as BooleanN,
	t1.Int32 as Int32,
	t1.Int32N as Int32N,
	t1.`Decimal` as Decimal_1,
	t1.DecimalN as DecimalN,
	t1.`Double` as Double_1,
	t1.DoubleN as DoubleN
FROM
	BooleanTable t1

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Boolean` as Boolean_1,
	r.BooleanN as BooleanN,
	r.Int32 as Int32,
	r.Int32N as Int32N,
	r.`Decimal` as Decimal_1,
	r.DecimalN as DecimalN,
	r.`Double` as Double_1,
	r.DoubleN as DoubleN
FROM
	BooleanTable r
WHERE
	Coalesce(r.BooleanN, r.Id % 2 = 1)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Boolean` as Boolean_1,
	t1.BooleanN as BooleanN,
	t1.Int32 as Int32,
	t1.Int32N as Int32N,
	t1.`Decimal` as Decimal_1,
	t1.DecimalN as DecimalN,
	t1.`Double` as Double_1,
	t1.DoubleN as DoubleN
FROM
	BooleanTable t1

