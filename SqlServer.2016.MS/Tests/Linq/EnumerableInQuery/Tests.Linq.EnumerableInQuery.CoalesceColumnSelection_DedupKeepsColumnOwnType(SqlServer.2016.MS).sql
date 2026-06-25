-- SqlServer.2016.MS SqlServer.2016

SELECT
	[it].[ColorId]
FROM
	[SomeItem] [item_1]
		LEFT JOIN [SomeColor] [a_Color] ON [item_1].[ColorId] = [a_Color].[Id]
		OUTER APPLY (VALUES
			(Coalesce(IIF([a_Color].[Id] IS NULL, NULL, [item_1].[ColorId]), 0)),
			(Coalesce(IIF([a_Color].[Id] IS NULL, NULL, [item_1].[ColorId]), 0))
		) [it]([ColorId])

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId],
	[a_Color].[Id],
	[a_Color].[Name],
	[a_Style].[Id],
	[a_Style].[Name]
FROM
	[SomeItem] [t1]
		LEFT JOIN [SomeColor] [a_Color] ON [t1].[ColorId] = [a_Color].[Id]
		LEFT JOIN [SomeStyle] [a_Style] ON [t1].[StyleId] = [a_Style].[Id]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId]
FROM
	[SomeItem] [t1]

