﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t3].[ColorName],
	[t3].[StyleName],
	[t3].[Conditional],
	[t3].[StrValue]
FROM
	(
		SELECT
			IIF(SUBSTRING((ISNULL((N',' + N''), '') + ISNULL((N',' + [it].[StyleName]), '')), LEN(CONVERT(NVARCHAR(MAX), N',') + N'!'), 8000) IS NULL, NULL, SUBSTRING((ISNULL((N',' + N''), '') + ISNULL((N',' + [it].[StyleName]), '')), LEN(CONVERT(NVARCHAR(MAX), N',') + N'!'), 8000) + N':' + IIF([it].[ColorId] IS NULL OR LEN(CAST([it].[ColorId] AS NVarChar(11)) + N'.') >= 5, CAST([it].[ColorId] AS NVarChar(11)), REPLICATE(N'0', 4 - (LEN(CAST([it].[ColorId] AS NVarChar(11)) + N'.') - 1)) + CAST([it].[ColorId] AS NVarChar(11)))) as [StrValue],
			[it].[ColorName],
			[it].[StyleName],
			[it].[Conditional]
		FROM
			[SomeItem] [t2]
				LEFT JOIN [SomeColor] [a_Color] ON [t2].[ColorId] = [a_Color].[Id]
				LEFT JOIN [SomeStyle] [a_Style] ON [t2].[StyleId] = [a_Style].[Id]
				OUTER APPLY (VALUES
					([a_Color].[Name],[a_Style].[Name],Coalesce(IIF([a_Color].[Id] IS NULL, NULL, [t2].[ColorId]), 0),IIF([a_Color].[Name] = N'Red', (
						SELECT
							COUNT(*) as [COUNT_1]
						FROM
							[SomeItem] [t1]
					), 0)),
					(NULL,[a_Style].[Name],Coalesce(IIF([a_Color].[Id] IS NULL, NULL, [t2].[ColorId]), 0),0)
				) [it]([ColorName], [StyleName], [ColorId], [Conditional])
		WHERE
			[it].[ColorName] = N'Red'
	) [t3]
ORDER BY
	[t3].[StrValue]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[ColorId],
	[t1].[StyleId]
FROM
	[SomeItem] [t1]

