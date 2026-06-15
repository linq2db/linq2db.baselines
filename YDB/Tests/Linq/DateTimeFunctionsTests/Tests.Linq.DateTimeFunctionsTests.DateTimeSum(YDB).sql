-- YDB Ydb

SELECT
	g_1.ID as Key_1,
	COUNT(*) as Count_1,
	SUM(Unwrap(CAST(g_1.DateTimeValue + DateTime::IntervalFromDays(Unwrap(CAST(Double('1') AS Int32))) - g_1.DateTimeValue AS Int64)) / 1000l) as Value_1,
	MAX(Unwrap(CAST(g_1.DateTimeValue + DateTime::IntervalFromDays(Unwrap(CAST(Double('1') AS Int32))) - g_1.DateTimeValue AS Int64)) / 1000l) as LongestDuration
FROM
	LinqDataTypes g_1
GROUP BY
	g_1.ID

