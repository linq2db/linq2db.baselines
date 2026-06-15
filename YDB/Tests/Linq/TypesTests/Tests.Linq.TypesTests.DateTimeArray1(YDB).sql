-- YDB Ydb

SELECT
	t.ID as ID,
	t.MoneyValue as MoneyValue,
	t.DateTimeValue as DateTimeValue,
	t.DateTimeValue2 as DateTimeValue2,
	t.BoolValue as BoolValue,
	t.GuidValue as GuidValue,
	t.SmallIntValue as SmallIntValue,
	t.IntValue as IntValue,
	t.BigIntValue as BigIntValue,
	t.StringValue as StringValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue IN (DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll('2001-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(111 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(111 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(121 AS Text)), 1, 2) || '.'u || Unicode::Substring(Unwrap(CAST(1100 AS Text)), 1, 3), ' 'u, 'T'u) || 'Z'u)))

