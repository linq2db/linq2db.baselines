-- SqlServer.Contained SqlServer.2025
SELECT
	[x].[Id],
	CAST(N'Q1' AS NVarChar(4000)),
	[x].[Q1]
FROM
	[QuarterlySales] [x]
WHERE
	[x].[Q1] IS NOT NULL
UNION ALL
SELECT
	[x_1].[Id],
	CAST(N'Q2' AS NVarChar(4000)),
	[x_1].[Q2]
FROM
	[QuarterlySales] [x_1]
WHERE
	[x_1].[Q2] IS NOT NULL

