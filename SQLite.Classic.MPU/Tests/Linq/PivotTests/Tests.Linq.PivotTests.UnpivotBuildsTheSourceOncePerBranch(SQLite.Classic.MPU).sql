-- SQLite.Classic.MPU SQLite.Classic SQLite
/* unpivot-tag */
SELECT
	[row_1].[Id],
	[row_1].[Q1]
FROM
	[QuarterlySales] [row_1]
WHERE
	[row_1].[Q1] IS NOT NULL

-- SQLite.Classic.MPU SQLite.Classic SQLite
/* unpivot-tag
unpivot-tag */
SELECT
	[row_1].[Id],
	CAST('Q1' AS NVarChar(255)),
	[row_1].[Q1]
FROM
	[QuarterlySales] [row_1]
WHERE
	[row_1].[Q1] IS NOT NULL
UNION ALL
SELECT
	[row_2].[Id],
	CAST('Q2' AS NVarChar(255)),
	[row_2].[Q2]
FROM
	[QuarterlySales] [row_2]
WHERE
	[row_2].[Q2] IS NOT NULL

