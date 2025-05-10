BeforeExecute
-- SqlCe

SELECT
	[it_1].[cond_1] as [cond],
	[it_1].[cond] as [cond_1],
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
				COUNT(*) as [COUNT_1]
			FROM
				[SomeItem] [t1]
		) [t2] ON 1=1
		OUTER APPLY (
			SELECT
				[it].[ColorName],
				[it].[Count] as [Count_1],
				[it].[index] as [cond],
				[it].[StyleName],
				[it].[Conditional],
				[it].[field1],
				[it].[field2],
				[it].[field3],
				1 as [cond_1]
			FROM
				(
					SELECT [a_Color].[Name] AS [ColorName], [t2].[COUNT_1] AS [Count], 0 AS [index], [a_Style].[Name] AS [StyleName], CASE
					WHEN [a_Color].[Name] = 'Red' THEN [t2].[COUNT_1]
					ELSE 0
				END AS [Conditional], 1 AS [field1], 2 AS [field2], 3 AS [field3]
					UNION ALL
					SELECT NULL AS [ColorName], 0 AS [Count], 1 AS [index], [a_Style].[Name] AS [StyleName], NULL AS [Conditional], 4 AS [field1], 5 AS [field2], 6 AS [field3]) [it]
		) [it_1]
WHERE
	[it_1].[ColorName] = 'Red' OR [it_1].[Count_1] = 0

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

BeforeExecute
-- SqlCe

SELECT DISTINCT
	[it].[Conditional]
FROM
	[SomeItem] [t3]
		LEFT JOIN [SomeColor] [a_Color] ON [t3].[ColorId] = [a_Color].[Id]
		LEFT JOIN (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[SomeItem] [t1]
		) [t2] ON 1=1
		OUTER APPLY (
			SELECT [a_Color].[Name] AS [ColorName], [t2].[COUNT_1] AS [Count], CASE
			WHEN [a_Color].[Name] = 'Red' THEN [t2].[COUNT_1]
			ELSE 0
		END AS [Conditional]
			UNION ALL
			SELECT NULL AS [ColorName], 0 AS [Count], NULL AS [Conditional]) [it]
WHERE
	[it].[ColorName] = 'Red' OR [it].[Count] = 0

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

