-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[Id],
	CStr('str1')
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str2')
FROM
	[Issue3360Table] [p_1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[Id],
	CStr('str2')
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str1')
FROM
	[Issue3360Table] [p_1]

