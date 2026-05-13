-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([e].[Str1] IS NULL, '', [e].[Str1]) + '/' + IIF([e].[StrReq] IS NULL, '', [e].[StrReq])
FROM
	[ConcatTestEntity] [e]
ORDER BY
	[e].[Id]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

