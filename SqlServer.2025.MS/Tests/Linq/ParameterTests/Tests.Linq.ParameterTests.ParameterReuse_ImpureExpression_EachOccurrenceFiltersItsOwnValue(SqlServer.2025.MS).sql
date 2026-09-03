-- SqlServer.2025.MS SqlServer.2025
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @p_1 Int -- Int32
SET     @p_1 = 4

SELECT
	[t].[Id]
FROM
	[ParameterDeduplication] [t]
WHERE
	[t].[Int1] = @p OR [t].[Int2] = @p_1

