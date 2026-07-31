-- SqlServer.Contained SqlServer.2019
DECLARE @counter Int -- Int32
SET     @counter = 3
DECLARE @counter_1 Int -- Int32
SET     @counter_1 = 4

SELECT
	[t].[Id]
FROM
	[ParameterDeduplication] [t]
WHERE
	[t].[Int1] = @counter OR [t].[Int2] = @counter_1

