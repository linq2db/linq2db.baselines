-- Access.Ace.OleDb AccessOleDb
SELECT
	[row_1].[Id],
	CStr('ROOT_AMT'),
	[row_1].[ROOT_AMT]
FROM
	[NestedAmounts] [row_1]
WHERE
	[row_1].[ROOT_AMT] IS NOT NULL
UNION ALL
SELECT
	[row_2].[Id],
	CStr('SHIP_AMT'),
	[row_2].[SHIP_AMT]
FROM
	[NestedAmounts] [row_2]
WHERE
	[row_2].[SHIP_AMT] IS NOT NULL
UNION ALL
SELECT
	[row_3].[Id],
	CStr('BILL_AMT'),
	[row_3].[BILL_AMT]
FROM
	[NestedAmounts] [row_3]
WHERE
	[row_3].[BILL_AMT] IS NOT NULL

