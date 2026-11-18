-- SqlServer.CS.MS SqlServer.2025
DECLARE @p Int -- Int32
SET     @p = 2
DECLARE @p_1 Int -- Int32
SET     @p_1 = 0

SELECT
	[t].[Id]
FROM
	[CountTarget] [t]
WHERE
	[t].[ItemsCount] = @p AND [t].[EmptyCount] = @p_1

