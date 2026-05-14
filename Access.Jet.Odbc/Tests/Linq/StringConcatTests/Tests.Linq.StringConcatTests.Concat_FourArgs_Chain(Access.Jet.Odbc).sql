-- Access.Jet.Odbc AccessODBC

SELECT
	[e].[Id]
FROM
	[ConcatTestEntity] [e]
WHERE
	(IIF([e].[Str1] IS NULL, '', [e].[Str1]) + ' ' + IIF([e].[StrReq] IS NULL, '', [e].[StrReq]) + '!') = 'John Programmer!'

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[ConcatTestEntity] [t1]

