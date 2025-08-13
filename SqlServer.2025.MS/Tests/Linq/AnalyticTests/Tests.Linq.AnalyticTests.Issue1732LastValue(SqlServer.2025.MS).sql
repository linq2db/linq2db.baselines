BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @group Int -- Int32
SET     @group = 7

SELECT
	[p].[Id],
	LAST_VALUE([p].[Id]) OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group

