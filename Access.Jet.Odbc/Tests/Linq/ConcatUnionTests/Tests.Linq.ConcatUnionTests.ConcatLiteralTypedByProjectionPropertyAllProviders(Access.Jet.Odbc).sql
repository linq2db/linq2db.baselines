-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[Id],
	CStr('str1')
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str2')
FROM
	[SetLiteralTypingTable] [p_1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[Id],
	CStr('str2')
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str1')
FROM
	[SetLiteralTypingTable] [p_1]

