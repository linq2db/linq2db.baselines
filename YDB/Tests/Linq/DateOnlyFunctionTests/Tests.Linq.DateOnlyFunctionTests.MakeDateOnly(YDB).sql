-- YDB Ydb

SELECT
	Unwrap(CAST('2010-'u || Unicode::Substring(Unwrap(CAST(t.ID + 100 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) AS Date)) as Value_1
FROM
	LinqDataTypes t
WHERE
	DateTime::GetYear(Unwrap(CAST('2010-'u || Unicode::Substring(Unwrap(CAST(t.ID + 100 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) AS Date))) = 2010

