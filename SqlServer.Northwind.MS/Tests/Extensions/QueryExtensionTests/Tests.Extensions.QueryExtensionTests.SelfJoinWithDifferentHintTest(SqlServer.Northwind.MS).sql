SELECT
	[p].[Id],
	[p].[PersonId]
FROM
	[Adress] [p] WITH (NOLOCK)
		INNER JOIN [Adress] [a] ON [p].[Id] = [a].[Id]

