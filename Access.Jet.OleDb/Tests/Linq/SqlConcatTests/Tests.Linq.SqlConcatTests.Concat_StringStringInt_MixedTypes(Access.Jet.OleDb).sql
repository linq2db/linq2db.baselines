-- Access.Jet.OleDb AccessOleDb

SELECT
	[e].[StrReq]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	([e].[StrReq] + ' 1') = 'Programmer 1'

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

