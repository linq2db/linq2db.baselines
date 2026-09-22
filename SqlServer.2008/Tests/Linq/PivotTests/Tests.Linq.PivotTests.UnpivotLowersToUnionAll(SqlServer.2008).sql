-- SqlServer.2008
SELECT
	[row_1].[Id],
	CAST(N'Q1' AS NVarChar(4000)),
	[row_1].[Q1]
FROM
	[QuarterlySales] [row_1]
WHERE
	[row_1].[Q1] IS NOT NULL
UNION ALL
SELECT
	[row_2].[Id],
	CAST(N'Q2' AS NVarChar(4000)),
	[row_2].[Q2]
FROM
	[QuarterlySales] [row_2]
WHERE
	[row_2].[Q2] IS NOT NULL
UNION ALL
SELECT
	[row_3].[Id],
	CAST(N'Q3' AS NVarChar(4000)),
	[row_3].[Q3]
FROM
	[QuarterlySales] [row_3]
WHERE
	[row_3].[Q3] IS NOT NULL
UNION ALL
SELECT
	[row_4].[Id],
	CAST(N'Q4' AS NVarChar(4000)),
	[row_4].[Q4]
FROM
	[QuarterlySales] [row_4]
WHERE
	[row_4].[Q4] IS NOT NULL

