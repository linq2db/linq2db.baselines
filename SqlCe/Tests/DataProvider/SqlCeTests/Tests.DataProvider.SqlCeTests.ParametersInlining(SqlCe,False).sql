-- SqlCe
DECLARE @minValue DateTime
SET     @minValue = '1753-01-01'

SELECT
	[t1].[datetimeDataType] as [DateTimeValue]
FROM
	[AllTypes] [t1]
WHERE
	Coalesce([t1].[datetimeDataType], @minValue) <= '2020-02-29 17:54:55.123'

