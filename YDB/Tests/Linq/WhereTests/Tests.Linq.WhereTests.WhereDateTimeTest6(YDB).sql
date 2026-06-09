-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as Value_1,
	t1.DateTimeValue2 as DateTimeValue2,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.SmallIntValue as SmallIntValue,
	t1.IntValue as IntValue,
	t1.BigIntValue as BigIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1
WHERE
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t1.DateTimeValue))) = DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2009-'u || Unicode::Substring(Unwrap(CAST(109 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(120 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)))))

