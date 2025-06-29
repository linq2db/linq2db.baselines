SELECT
	[p].[Id],
	[p].[PersonId]
FROM
	[Adress] [p] NOLOCK
		INNER JOIN [Adress] [a] ON [p].[Id] = [a].[Id]

