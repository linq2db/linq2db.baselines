-- YDB Ydb
DECLARE $value Decimal(9, 5)
SET     $value = Decimal('6579.64648', 22, 9)

SELECT
	$value as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Float -- Single
SET     $value = Float('6579.64648')

SELECT
	Unwrap(CAST(Unwrap(CAST($value AS Text)) AS Decimal(22,9))) as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Double
SET     $value = Double('6579.6464800000003')

SELECT
	Unwrap(CAST(Unwrap(CAST($value AS Text)) AS Decimal(22,9))) as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Decimal(9, 5)
SET     $value = Decimal('6579.64648', 22, 9)

SELECT
	Unwrap(CAST($value AS Float)) as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Float -- Single
SET     $value = Float('6579.64648')

SELECT
	$value as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Double
SET     $value = Double('6579.6464800000003')

SELECT
	Unwrap(CAST($value AS Float)) as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Decimal(9, 5)
SET     $value = Decimal('6579.64648', 22, 9)

SELECT
	Unwrap(CAST($value AS Double)) as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Float -- Single
SET     $value = Float('6579.64648')

SELECT
	Unwrap(CAST($value AS Double)) as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

-- YDB Ydb
DECLARE $value Double
SET     $value = Double('6579.6464800000003')

SELECT
	$value as ServerConvert
FROM
	LinqDataTypes t1
LIMIT 1

