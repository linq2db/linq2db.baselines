BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CAST(N'2010-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + N'-01 20:35:44.000' AS DateTime2) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

