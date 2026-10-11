-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[row_1].[Id],
	CAST(N'ROOT_AMT' AS NVarChar(4000)),
	[row_1].[ROOT_AMT]
FROM
	[NestedAmounts] [row_1]
WHERE
	[row_1].[ROOT_AMT] IS NOT NULL
UNION ALL
SELECT
	[row_2].[Id],
	CAST(N'SHIP_AMT' AS NVarChar(4000)),
	[row_2].[SHIP_AMT]
FROM
	[NestedAmounts] [row_2]
WHERE
	[row_2].[SHIP_AMT] IS NOT NULL
UNION ALL
SELECT
	[row_3].[Id],
	CAST(N'BILL_AMT' AS NVarChar(4000)),
	[row_3].[BILL_AMT]
FROM
	[NestedAmounts] [row_3]
WHERE
	[row_3].[BILL_AMT] IS NOT NULL

