-- Access.Ace.Odbc AccessODBC

SELECT
	[e].[Id]
FROM
	[SqlConcatTestEntity] [e]
WHERE
	CStr([e].[Num]) + '-' + [e].[StrReq] = '100-Programmer'

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Str1],
	[t1].[Str2],
	[t1].[StrReq],
	[t1].[Num]
FROM
	[SqlConcatTestEntity] [t1]

