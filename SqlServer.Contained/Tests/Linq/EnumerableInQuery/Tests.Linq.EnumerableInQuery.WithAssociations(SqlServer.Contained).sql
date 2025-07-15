BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
				(VALUES
					([a_Color].[Name],[a_Style].[Name]),
					(NULL,[a_Style].[Name])
				) [it]([ColorName], [StyleName])
		) [it_1]
WHERE
	[it_1].[ColorName] = N'Red'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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

