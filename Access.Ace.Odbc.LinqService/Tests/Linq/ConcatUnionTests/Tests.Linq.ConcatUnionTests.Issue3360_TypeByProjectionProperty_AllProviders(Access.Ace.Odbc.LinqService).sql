BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

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

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

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

