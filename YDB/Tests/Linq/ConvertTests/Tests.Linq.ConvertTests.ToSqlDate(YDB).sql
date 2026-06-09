-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(DateTime::GetYear(t.DateTimeValue) AS Text)) || '-01-01'u AS Date)) as c1
FROM
	LinqDataTypes t

