-- SqlServer.2012

SELECT
	[y].[Id],
	[a_SomeValue].[Value]
FROM
	[FewNumberEntity] [x]
		INNER JOIN [LargeNumberEntity] [y] ON [x].[Id] = [y].[Id]
		CROSS APPLY (
			SELECT 
				COUNT(*) as [Value] 
			FROM 
				[dbo].[SomeTable] [st] WITH(NOLOCK) 
			WHERE 
				[st].[LargeNumberEntityId]=[y].[Id]
		) [a_SomeValue]
WHERE
	[x].[UserId] = 123

