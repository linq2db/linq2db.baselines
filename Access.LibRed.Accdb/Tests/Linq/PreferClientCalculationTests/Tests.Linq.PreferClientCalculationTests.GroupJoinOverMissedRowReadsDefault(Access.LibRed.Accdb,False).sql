-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	CStr(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END),
	CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END + 1
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([e].[Id] + 1000 = [j].[Id])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Key],
	[t1].[Name]
FROM
	[TranslatedMemberEntity] [t1]

