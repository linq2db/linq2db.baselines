BeforeExecute
-- SqlCe

SELECT
	[it_1].[cond],
	[it_1].[ColorName],
	[it_1].[StyleName],
	[it_1].[Count_1]
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
				[it].[StyleName],
				[it].[Count] as [Count_1],
				1 as [cond]
			FROM
				(
					SELECT [a_Color].[Name] AS [ColorName], [a_Style].[Name] AS [StyleName], [t2].[Count_1] AS [Count]
					UNION ALL
					SELECT NULL AS [ColorName], [a_Style].[Name] AS [StyleName], 0 AS [Count]) [it]
		) [it_1]
WHERE
	[it_1].[ColorName] = 'Red'

BeforeExecute
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

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId]
FROM
	[SomeItem] [t1]

