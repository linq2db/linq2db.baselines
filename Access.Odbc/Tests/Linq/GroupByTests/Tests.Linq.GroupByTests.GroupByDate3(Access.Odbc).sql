﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Sum([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1) as [c1],
			[grp].[MoneyValue],
			DatePart('yyyy', DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1)) as [Year_1],
			DatePart('m', DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1)) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

