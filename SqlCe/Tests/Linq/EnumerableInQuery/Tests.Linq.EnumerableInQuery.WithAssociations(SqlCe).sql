-- SqlCe

SELECT
	[it_1].[cond],
	[it_1].[ColorName],
	[it_1].[StyleName]
FROM
	[SomeItem] [t1]
		LEFT JOIN [SomeColor] [a_Color] ON [t1].[ColorId] = [a_Color].[Id]
		LEFT JOIN [SomeStyle] [a_Style] ON [t1].[StyleId] = [a_Style].[Id]
		OUTER APPLY (
			SELECT
				[it].[ColorName],
				[it].[StyleName],
				1 as [cond]
			FROM
				(
					SELECT [a_Color].[Name] AS [ColorName], [a_Style].[Name] AS [StyleName]
					UNION ALL
					SELECT NULL AS [ColorName], [a_Style].[Name] AS [StyleName]) [it]
		) [it_1]
WHERE
	[it_1].[ColorName] = 'Red'

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId],
	[a_Color].[Id] as [cond],
	[a_Color].[Name],
	[a_Style].[Id] as [cond_1],
	[a_Style].[Name] as [Name_1]
FROM
	[SomeItem] [t1]
		LEFT JOIN [SomeColor] [a_Color] ON [t1].[ColorId] = [a_Color].[Id]
		LEFT JOIN [SomeStyle] [a_Style] ON [t1].[StyleId] = [a_Style].[Id]

