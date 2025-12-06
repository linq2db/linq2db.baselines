-- SqlServer.2005

SELECT
	[t3].[ColorName],
	[t3].[StyleName],
	[t3].[Conditional],
	[t3].[StrValue]
FROM
	(
		SELECT
			SUBSTRING(N',' + Coalesce(N',' + [it].[StyleName], N''), 2, 2147483647) + N':' + CASE
				WHEN [it].[ColorId] IS NULL OR LEN(CAST([it].[ColorId] AS NVarChar(11)) + N'.') >= 5
					THEN CAST([it].[ColorId] AS NVarChar(11))
				ELSE REPLICATE(N'0', 4 - (LEN(CAST([it].[ColorId] AS NVarChar(11)) + N'.') - 1)) + CAST([it].[ColorId] AS NVarChar(11))
			END as [StrValue],
			[it].[ColorName],
			[it].[StyleName],
			[it].[Conditional]
		FROM
			[SomeItem] [t2]
				LEFT JOIN [SomeColor] [a_Color] ON [t2].[ColorId] = [a_Color].[Id]
				LEFT JOIN [SomeStyle] [a_Style] ON [t2].[StyleId] = [a_Style].[Id]
				LEFT JOIN [SomeColor] [a_Color_1] ON [t2].[ColorId] = [a_Color_1].[Id]
				OUTER APPLY (
					SELECT [a_Color].[Name] AS [ColorName], [a_Style].[Name] AS [StyleName], Coalesce(CASE
					WHEN [a_Color_1].[Id] IS NULL THEN NULL
					ELSE [t2].[ColorId]
				END, 0) AS [ColorId], [a_Color].[Name] AS [ColorName0], [a_Style].[Name] AS [StyleName0], CASE
					WHEN [a_Color].[Name] = N'Red' THEN (
						SELECT
							COUNT(*) as [Conditional]
						FROM
							[SomeItem] [t1]
					)
					ELSE 0
				END AS [Conditional]
					UNION ALL
					SELECT NULL, [a_Style].[Name], Coalesce(CASE
					WHEN [a_Color_1].[Id] IS NULL THEN NULL
					ELSE [t2].[ColorId]
				END, 0), NULL, [a_Style].[Name], 0) [it]
		WHERE
			[it].[ColorName] = N'Red'
	) [t3]
ORDER BY
	[t3].[StrValue]

-- SqlServer.2005

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

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId]
FROM
	[SomeItem] [t1]

