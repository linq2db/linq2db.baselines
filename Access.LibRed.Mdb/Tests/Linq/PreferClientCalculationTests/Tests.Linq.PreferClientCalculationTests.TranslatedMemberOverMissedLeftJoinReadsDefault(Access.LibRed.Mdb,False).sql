-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[Value1],
	CStr(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END),
	LCase(Mid(CStr(CASE
		WHEN [j].[Key] IS NULL THEN {guid {00000000-0000-0000-0000-000000000000}}
		ELSE [j].[Key]
	END), 2, 36)),
	CASE
		WHEN [j].[Value1] >= 5 AND [j].[Value1] IS NOT NULL THEN CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END
		ELSE 5
	END,
	CASE
		WHEN [j].[Value1] <= -5 AND [j].[Value1] IS NOT NULL THEN CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END
		ELSE -5
	END,
	CStr(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END) + '!',
	CASE
		WHEN [j].[Name] IS NULL THEN ''
		ELSE [j].[Name]
	END + '!',
	DateAdd('d', 10, [j].[Date]),
	DatePart('yyyy', DateAdd('d', 10, [j].[Date])),
	DatePart('d', DateAdd('d', 10, [j].[Date]))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

