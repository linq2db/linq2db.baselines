-- Access.Jet.Odbc AccessODBC

SELECT
	[e].[StrReq]
FROM
	[ConcatTestEntity] [e]
WHERE
	IIF([e].[StrReq] IS NULL, '', [e].[StrReq]) + ' I' = 'Programmer I'

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

