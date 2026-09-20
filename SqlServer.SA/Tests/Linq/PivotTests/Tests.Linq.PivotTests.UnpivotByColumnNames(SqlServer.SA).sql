-- SqlServer.SA SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Value]
FROM
	[QuarterlySales] UNPIVOT ([Value] FOR [Name] IN ([Q1], [Q2], [Q3], [Q4])) [t1]
ORDER BY
	[t1].[Id],
	[t1].[Name]

-- SqlServer.SA SqlServer.2019
SELECT
	[row_1].[Id],
	CAST(N'Q1' AS NVarChar(4000)),
	[row_1].[Q1]
FROM
	[QuarterlySales] [row_1]
UNION ALL
SELECT
	[row_2].[Id],
	CAST(N'Q2' AS NVarChar(4000)),
	[row_2].[Q2]
FROM
	[QuarterlySales] [row_2]
UNION ALL
SELECT
	[row_3].[Id],
	CAST(N'Q3' AS NVarChar(4000)),
	[row_3].[Q3]
FROM
	[QuarterlySales] [row_3]
UNION ALL
SELECT
	[row_4].[Id],
	CAST(N'Q4' AS NVarChar(4000)),
	[row_4].[Q4]
FROM
	[QuarterlySales] [row_4]

