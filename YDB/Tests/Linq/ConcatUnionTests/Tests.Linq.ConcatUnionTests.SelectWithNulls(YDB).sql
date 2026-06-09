-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1
UNION ALL
SELECT
	CAST(NULL AS Int32) as ID,
	CAST(NULL AS Decimal(6,2)) as MoneyValue,
	CAST(NULL AS Timestamp) as DateTimeValue,
	CAST(NULL AS Bool) as BoolValue,
	CAST(NULL AS Uuid) as GuidValue,
	CAST(NULL AS Bytes) as BinaryValue,
	CAST(NULL AS Int16) as SmallIntValue,
	CAST(NULL AS Text) as StringValue
FROM
	LinqDataTypes d

