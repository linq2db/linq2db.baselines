-- SqlServer.Contained SqlServer.2019

SELECT
	[it_1].[cond],
	[it_1].[ColorName],
	[it_1].[StyleName],
	[it_1].[Count_1],
	[it_1].[Conditional],
	[it_1].[field1],
	[it_1].[field2],
	[it_1].[field3]
FROM
	[SomeItem] [t3]
		LEFT JOIN [SomeColor] [a_Color] ON [t3].[ColorId] = [a_Color].[Id]
		LEFT JOIN [SomeStyle] [a_Style] ON [t3].[StyleId] = [a_Style].[Id]
		LEFT JOIN (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[SomeItem] [t1]
		) [t2] ON 1=1
		OUTER APPLY (
			SELECT
				[it].[ColorName],
				[it].[Count] as [Count_1],
				[it].[StyleName],
				[it].[Conditional],
				[it].[field1],
				[it].[field2],
				[it].[field3],
				1 as [cond]
			FROM
				(VALUES
					([a_Color].[Name],[t2].[Count_1],[a_Style].[Name],IIF([a_Color].[Name] = N'Red', [t2].[Count_1], 0),1,2,3),
					(NULL,0,[a_Style].[Name],NULL,4,5,6)
				) [it]([ColorName], [Count], [StyleName], [Conditional], [field1], [field2], [field3])
		) [it_1]
WHERE
	[it_1].[ColorName] = N'Red' OR [it_1].[Count_1] = 0

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

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId]
FROM
	[SomeItem] [t1]

-- SqlServer.Contained SqlServer.2019

SELECT DISTINCT
	[it].[Conditional]
FROM
	[SomeItem] [t3]
		LEFT JOIN [SomeColor] [a_Color] ON [t3].[ColorId] = [a_Color].[Id]
		LEFT JOIN (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[SomeItem] [t1]
		) [t2] ON 1=1
		OUTER APPLY (VALUES
			([a_Color].[Name],[t2].[Count_1],IIF([a_Color].[Name] = N'Red', [t2].[Count_1], 0)),
			(NULL,0,NULL)
		) [it]([ColorName], [Count], [Conditional])
WHERE
	[it].[ColorName] = N'Red' OR [it].[Count] = 0

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

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId]
FROM
	[SomeItem] [t1]

