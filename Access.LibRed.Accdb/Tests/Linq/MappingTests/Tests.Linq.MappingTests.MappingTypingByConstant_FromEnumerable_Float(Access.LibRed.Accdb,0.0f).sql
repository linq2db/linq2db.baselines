-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,0)
		) [arg]([Id], [Value]) ON ([entity].[PersonID] = [arg].[Id])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (VALUES
			(1,3.14748365E+09)
		) [arg]([Id], [Value]) ON ([entity].[PersonID] = [arg].[Id])

