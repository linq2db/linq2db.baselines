-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[Id],
	[p].[Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str')
FROM
	[Issue3360Table] [p_1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[Id],
	CStr('str')
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[Issue3360Table] [p_1]

