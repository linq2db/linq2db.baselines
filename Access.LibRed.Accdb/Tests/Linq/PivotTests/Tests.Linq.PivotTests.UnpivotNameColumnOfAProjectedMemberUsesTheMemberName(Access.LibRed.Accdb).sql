-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[Id],
	CStr('Q1'),
	[x].[Q1]
FROM
	[QuarterlySales] [x]
WHERE
	[x].[Q1] IS NOT NULL
UNION ALL
SELECT
	[x_1].[Id],
	CStr('Q2'),
	[x_1].[Q2]
FROM
	[QuarterlySales] [x_1]
WHERE
	[x_1].[Q2] IS NOT NULL

