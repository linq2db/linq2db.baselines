BeforeExecute
-- SqlCe
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT 
	[_].[datetimeDataType]
FROM
	[AllTypes] [_]
WHERE
	Coalesce([_].[datetimeDataType], '1753-01-01') <= @DateTime

