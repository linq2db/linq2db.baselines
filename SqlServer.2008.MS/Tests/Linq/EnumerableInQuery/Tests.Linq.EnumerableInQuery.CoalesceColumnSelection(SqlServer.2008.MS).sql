BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t3].[ColorName],
	[t3].[StyleName],
	[t3].[Conditional],
	[t3].[StrValue]
FROM
	(
		SELECT
			CASE
				WHEN SUBSTRING((ISNULL((N',' + N''), '') + ISNULL((N',' + [it].[StyleName]), '')), LEN(CONVERT(NVARCHAR(MAX), N',') + N'!'), 8000) IS NULL
					THEN NULL
				ELSE SUBSTRING((ISNULL((N',' + N''), '') + ISNULL((N',' + [it].[StyleName]), '')), LEN(CONVERT(NVARCHAR(MAX), N',') + N'!'), 8000) + N':' + CASE
					WHEN [it].[ColorId] IS NULL OR LEN(CAST([it].[ColorId] AS NVarChar(11)) + N'.') >= 5
						THEN CAST([it].[ColorId] AS NVarChar(11))
					ELSE REPLICATE(N'0', 4 - (LEN(CAST([it].[ColorId] AS NVarChar(11)) + N'.') - 1)) + CAST([it].[ColorId] AS NVarChar(11))
				END
			END as [StrValue],
			[it].[ColorName],
			[it].[StyleName],
			[it].[Conditional]
		FROM
			[SomeItem] [t2]
				LEFT JOIN [SomeColor] [a_Color] ON [t2].[ColorId] = [a_Color].[Id]
				LEFT JOIN [SomeStyle] [a_Style] ON [t2].[StyleId] = [a_Style].[Id]
				OUTER APPLY (VALUES
					([a_Color].[Name],[a_Style].[Name],Coalesce(CASE
						WHEN [a_Color].[Id] IS NULL THEN NULL
						ELSE [t2].[ColorId]
					END, 0),CASE
						WHEN [a_Color].[Name] = N'Red' THEN (
							SELECT
								COUNT(*) as [COUNT_1]
							FROM
								[SomeItem] [t1]
						)
						ELSE 0
					END),
					(NULL,[a_Style].[Name],Coalesce(CASE
						WHEN [a_Color].[Id] IS NULL THEN NULL
						ELSE [t2].[ColorId]
					END, 0),0)
				) [it]([ColorName], [StyleName], [ColorId], [Conditional])
		WHERE
			[it].[ColorName] = N'Red'
	) [t3]
ORDER BY
	[t3].[StrValue]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId]
FROM
	[SomeItem] [t1]

