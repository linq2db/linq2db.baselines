﻿BeforeExecute
-- SqlCe

SELECT
	SUM([grp_1].[MoneyValue]) as [SUM_1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)) + '-01' AS DateTime) as [c1],
			[grp].[MoneyValue],
			DatePart(year, CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)) + '-01' AS DateTime)) as [Year_1],
			DatePart(month, CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)) + '-01' AS DateTime)) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

