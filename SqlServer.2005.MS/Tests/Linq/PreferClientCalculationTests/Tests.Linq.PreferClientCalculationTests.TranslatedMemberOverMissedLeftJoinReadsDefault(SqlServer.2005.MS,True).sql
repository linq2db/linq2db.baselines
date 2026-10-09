-- SqlServer.2005.MS SqlServer.2005
SELECT
	[e].[Value1],
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	Lower(CAST(Coalesce([j].[Key], '00000000-0000-0000-0000-000000000000') AS Char(36))),
	CASE
		WHEN Coalesce([j].[Value1], 0) >= 5 THEN Coalesce([j].[Value1], 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce([j].[Value1], 0) <= -5 THEN Coalesce([j].[Value1], 0)
		ELSE -5
	END,
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)) + N'!',
	Coalesce([j].[Name], N'') + N'!',
	DateAdd(day, 10, Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME))),
	DatePart(year, DateAdd(day, 10, Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME)))),
	DatePart(day, DateAdd(day, 10, Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME))))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

