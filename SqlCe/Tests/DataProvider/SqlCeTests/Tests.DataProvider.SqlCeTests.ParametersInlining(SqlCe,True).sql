-- SqlCe

SELECT
	[t1].[datetimeDataType] as [DateTimeValue]
FROM
	[AllTypes] [t1]
WHERE
	Coalesce([t1].[datetimeDataType], '1753-01-01 00:00:00.000') <= '2020-02-29 17:54:55.123'

