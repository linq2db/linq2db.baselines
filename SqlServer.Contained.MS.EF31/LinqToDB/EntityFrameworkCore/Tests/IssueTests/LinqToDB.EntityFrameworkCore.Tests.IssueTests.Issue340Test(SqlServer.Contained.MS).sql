SELECT [i].[Id], [i].[IsActive]
FROM [Issue340Entities] AS [i]


--  SqlServer.2019

SELECT
	[x].[Id]
FROM
	(SELECT NULL [IsActive], NULL [Id] WHERE 1 = 0) [x]([IsActive], [Id])
WHERE
	[x].[IsActive] = 1



