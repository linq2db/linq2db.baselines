SELECT [p].[Id], [p].[ParentId]
FROM [Parents] AS [p]


--  SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 2

SELECT TOP (1)
	[t1].[Index_1]
FROM
	(
		SELECT
			[x].[Id],
			ROW_NUMBER() OVER(ORDER BY [x].[Id]) as [Index_1]
		FROM
			(VALUES
				(2), (1)
			) [x]([Id])
	) [t1]
WHERE
	[t1].[Id] = @id



