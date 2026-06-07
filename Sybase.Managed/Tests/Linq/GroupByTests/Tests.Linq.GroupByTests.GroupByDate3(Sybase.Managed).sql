-- Sybase.Managed Sybase

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[c1]),
	DatePart(month, [grp_1].[c1])
FROM
	(
		SELECT
			CAST(RIGHT(CASE WHEN CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)) IS NULL THEN NULL ELSE '0' || CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)) END, 4) || '-' || RIGHT(CASE WHEN CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)) IS NULL THEN NULL ELSE '0' || CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)) END, 2) || '-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

-- Sybase.Managed Sybase

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[c1]),
	DatePart(month, [grp_1].[c1])
FROM
	(
		SELECT
			CAST(RIGHT(CASE WHEN CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)) IS NULL THEN NULL ELSE '0' || CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)) END, 4) || '-' || RIGHT(CASE WHEN CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)) IS NULL THEN NULL ELSE '0' || CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)) END, 2) || '-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

