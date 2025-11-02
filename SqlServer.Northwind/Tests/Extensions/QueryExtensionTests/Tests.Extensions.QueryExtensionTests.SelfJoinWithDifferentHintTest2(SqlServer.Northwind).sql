-- SqlServer.Northwind SqlServer.2019

SELECT
	[p].[Id],
	[p].[PersonId]
FROM
	[Adress] [p] WITH (NOLOCK)
		INNER JOIN [Adress] [a] WITH (READUNCOMMITTED) ON [p].[Id] = [a].[Id]

