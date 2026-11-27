-- Access.Jet.OleDb AccessOleDb
SELECT
	[p].[Id],
	[p].[Str]
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str')
FROM
	[SetLiteralTypingTable] [p_1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[p].[Id],
	CStr('str')
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[SetLiteralTypingTable] [p_1]

