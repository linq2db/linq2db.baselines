﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2) as [c1],
			[grp].[MoneyValue],
			DatePart(year, CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2)) as [Year_1],
			DatePart(month, CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2)) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

