BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @group Int -- Int32
SET     @group = 7

SELECT
	[p].[Id],
	FIRST_VALUE([p].[Id]) OVER(ORDER BY [p].[Order] DESC),
	FIRST_VALUE([p].[Id]) IGNORE NULLS OVER(ORDER BY [p].[Order] DESC),
	LAST_VALUE([p].[Id]) OVER(ORDER BY [p].[Order]),
	LAST_VALUE([p].[Id]) IGNORE NULLS OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group

