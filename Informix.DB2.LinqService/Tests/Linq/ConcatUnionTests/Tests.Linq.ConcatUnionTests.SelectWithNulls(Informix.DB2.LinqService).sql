BeforeExecute
-- Informix.DB2 Informix

SELECT
	NVL(t1.ID, NULL),
	NVL(t1.MoneyValue, NULL),
	NVL(t1.DateTimeValue, NULL),
	NVL(t1.BoolValue, NULL),
	NVL(t1.GuidValue, NULL),
	t1.BinaryValue,
	NVL(t1.SmallIntValue, NULL),
	t1.StringValue
FROM
	LinqDataTypes t1
UNION ALL
SELECT
	NULL::Int,
	NULL::Decimal,
	NULL::datetime year to fraction,
	NULL::BOOLEAN,
	NULL::Char(36),
	NULL::BYTE,
	NULL::SmallInt,
	NULL::NVarChar(255)
FROM
	LinqDataTypes d

