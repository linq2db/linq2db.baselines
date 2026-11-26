-- SqlServer.2025
SELECT
	[x].[Category],
	SUM(IIF([x].[Year] = 2000, [x].[Amount], NULL)),
	SUM(IIF([x].[Year] = 2010, [x].[Amount], NULL))
FROM
	[Sales] [x]
WHERE
	[x].[Category] = N'A'
GROUP BY
	[x].[Category]
UNION ALL
SELECT
	[x_1].[Category],
	MAX(IIF([x_1].[Year] = 2000, [x_1].[Amount], NULL)),
	MAX(IIF([x_1].[Year] = 2010, [x_1].[Amount], NULL))
FROM
	[Sales] [x_1]
WHERE
	[x_1].[Category] = N'B'
GROUP BY
	[x_1].[Category]

