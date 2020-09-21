BeforeExecute
-- SqlCe
DECLARE @Value_1 DateTime
SET     @Value_1 = '1753-01-01'
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	[_].[datetimeDataType]
FROM
	[AllTypes] [_]
WHERE
	Coalesce([_].[datetimeDataType], @Value_1) <= @DateTime

