-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(DateTime::GetYear(p.DateTimeValue) AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST(110 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) AS Date)) as c1
FROM
	LinqDataTypes p

