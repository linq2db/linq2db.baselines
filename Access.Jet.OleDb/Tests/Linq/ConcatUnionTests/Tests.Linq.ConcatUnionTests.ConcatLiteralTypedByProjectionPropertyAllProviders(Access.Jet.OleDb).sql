-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

