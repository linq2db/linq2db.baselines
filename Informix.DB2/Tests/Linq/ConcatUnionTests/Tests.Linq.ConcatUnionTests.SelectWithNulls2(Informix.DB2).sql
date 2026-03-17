-- Informix.DB2 Informix

SELECT
	NVL(t1.ID, NULL),
	NVL(t1.MoneyValue, NULL),
	t1.DateTimeValue,
	t1.DateTimeValue2,
	t1.BoolValue,
	t1.GuidValue,
	t1.SmallIntValue,
	t1.IntValue,
	t1.BigIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
UNION ALL
SELECT
	NULL::Int,
	NULL::Decimal,
	NULL::datetime year to fraction,
	NULL::datetime year to fraction,
	NULL::BOOLEAN,
	NULL::Char(36),
	NULL::SmallInt,
	NULL::Int,
	NULL::BigInt,
	NULL::NVarChar(255)
FROM
	LinqDataTypes d

