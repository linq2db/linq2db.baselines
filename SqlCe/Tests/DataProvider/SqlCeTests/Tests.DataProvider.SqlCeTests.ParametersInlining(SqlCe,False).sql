BeforeExecute
-- SqlCe
DECLARE @Value DateTime
SET     @Value = '1753-01-01'
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	[t1].[datetimeDataType] as [DateTimeValue]
FROM
	[AllTypes] [t1]
WHERE
	Coalesce([t1].[datetimeDataType], @Value) <= @DateTime

