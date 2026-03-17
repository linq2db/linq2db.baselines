-- SqlServer.2016.MS SqlServer.2016
DECLARE @group Int -- Int32
SET     @group = 7

SELECT
	[p].[Id],
	LAG([p].[Id], 1, -1) OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group

