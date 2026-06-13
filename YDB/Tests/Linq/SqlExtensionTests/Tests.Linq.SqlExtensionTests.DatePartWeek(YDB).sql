-- YDB Ydb

SELECT
	DateTime::GetWeekOfYearIso8601(t.DateTimeValue) as c1
FROM
	LinqDataTypes t

