-- Access.Jet.Odbc AccessODBC
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'

SELECT
	[e].[Value1],
	CStr(IIF([j].[Value1] IS NULL, 0, [j].[Value1])),
	LCase(Mid(CStr(IIF([j].[Key] IS NULL, ?, [j].[Key])), 2, 36)),
	IIF([j].[Value1] >= 5 AND [j].[Value1] IS NOT NULL, IIF([j].[Value1] IS NULL, 0, [j].[Value1]), 5),
	IIF([j].[Value1] <= -5 AND [j].[Value1] IS NOT NULL, IIF([j].[Value1] IS NULL, 0, [j].[Value1]), -5),
	CStr(IIF([j].[Value1] IS NULL, 0, [j].[Value1])) + '!',
	IIF([j].[Name] IS NULL, '', [j].[Name]) + '!',
	DateAdd('d', 10, IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date])),
	DatePart('yyyy', DateAdd('d', 10, IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date]))),
	DatePart('d', DateAdd('d', 10, IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date])))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

