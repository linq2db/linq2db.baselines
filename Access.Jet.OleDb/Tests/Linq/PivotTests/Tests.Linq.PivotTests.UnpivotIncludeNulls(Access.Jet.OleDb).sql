-- Access.Jet.OleDb AccessOleDb
SELECT
	[row_1].[Id],
	CStr('Q1'),
	[row_1].[Q1]
FROM
	[QuarterlySales] [row_1]
UNION ALL
SELECT
	[row_2].[Id],
	CStr('Q2'),
	[row_2].[Q2]
FROM
	[QuarterlySales] [row_2]
UNION ALL
SELECT
	[row_3].[Id],
	CStr('Q3'),
	[row_3].[Q3]
FROM
	[QuarterlySales] [row_3]
UNION ALL
SELECT
	[row_4].[Id],
	CStr('Q4'),
	[row_4].[Q4]
FROM
	[QuarterlySales] [row_4]

