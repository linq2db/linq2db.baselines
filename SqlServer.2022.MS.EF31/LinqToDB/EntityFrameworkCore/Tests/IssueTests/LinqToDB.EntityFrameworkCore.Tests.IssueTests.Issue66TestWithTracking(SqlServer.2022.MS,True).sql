SELECT [d].[Id], [d].[MasterId], [m].[Id]
FROM [Details] AS [d]
INNER JOIN [Masters] AS [m] ON [d].[MasterId] = [m].[Id]


--  SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[MasterId]
FROM
	(VALUES
		(1,1), (2,1)
	) [t1]([Id], [MasterId])



