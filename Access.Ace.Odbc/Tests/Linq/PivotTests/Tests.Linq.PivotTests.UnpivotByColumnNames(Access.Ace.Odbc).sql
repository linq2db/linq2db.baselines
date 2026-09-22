-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Quarter],
	[t1].[Amount]
FROM
	(
		SELECT
			[row_1].[Id],
			CStr('Q1') as [Quarter],
			[row_1].[Q1] as [Amount]
		FROM
			[QuarterlySales] [row_1]
		WHERE
			[row_1].[Q1] IS NOT NULL
		UNION ALL
		SELECT
			[row_2].[Id],
			CStr('Q2') as [Quarter],
			[row_2].[Q2] as [Amount]
		FROM
			[QuarterlySales] [row_2]
		WHERE
			[row_2].[Q2] IS NOT NULL
		UNION ALL
		SELECT
			[row_3].[Id],
			CStr('Q3') as [Quarter],
			[row_3].[Q3] as [Amount]
		FROM
			[QuarterlySales] [row_3]
		WHERE
			[row_3].[Q3] IS NOT NULL
		UNION ALL
		SELECT
			[row_4].[Id],
			CStr('Q4') as [Quarter],
			[row_4].[Q4] as [Amount]
		FROM
			[QuarterlySales] [row_4]
		WHERE
			[row_4].[Q4] IS NOT NULL
	) [t1]
ORDER BY
	[t1].[Id],
	[t1].[Quarter]

-- Access.Ace.Odbc AccessODBC
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

