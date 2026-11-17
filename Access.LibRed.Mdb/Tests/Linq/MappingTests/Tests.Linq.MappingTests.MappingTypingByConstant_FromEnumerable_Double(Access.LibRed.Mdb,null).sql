-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,NULL)
		) [arg]([Id], [Value]) ON ([entity].[PersonID] = [arg].[Id])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,3147483648)
		) [arg]([Id], [Value]) ON ([entity].[PersonID] = [arg].[Id])

