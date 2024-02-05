BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.MoneyValue,
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
	Cast(NULL as Int),
	Cast(NULL as Decimal),
	Cast(NULL as datetime year to fraction),
	Cast(NULL as datetime year to fraction),
	Cast(NULL as BOOLEAN),
	Cast(NULL as Char(36)),
	Cast(NULL as SmallInt),
	Cast(NULL as Int),
	Cast(NULL as BigInt),
	Cast(NULL as NVarChar(255))
FROM
	LinqDataTypes d

