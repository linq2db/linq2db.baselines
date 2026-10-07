-- SqlCe
SELECT
	[e].[Value1],
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	Lower(CAST(Coalesce([j].[Key], '00000000-0000-0000-0000-000000000000') AS NChar(36))),
	CASE
		WHEN Coalesce([j].[Value1], 0) >= 5 THEN Coalesce([j].[Value1], 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce([j].[Value1], 0) <= -5 THEN Coalesce([j].[Value1], 0)
		ELSE -5
	END,
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)) + '!',
	Coalesce([j].[Name], '') + '!',
	DateAdd(day, [e].[Value1], Coalesce([j].[Date], '1753-01-01 00:00:00.000')),
	DatePart(year, DateAdd(day, [e].[Value1], Coalesce([j].[Date], '1753-01-01 00:00:00.000'))),
	DatePart(day, DateAdd(day, [e].[Value1], Coalesce([j].[Date], '1753-01-01 00:00:00.000')))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

