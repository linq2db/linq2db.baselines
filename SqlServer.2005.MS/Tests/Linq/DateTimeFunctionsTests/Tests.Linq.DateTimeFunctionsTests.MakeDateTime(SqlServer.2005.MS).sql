BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CAST(N'2010-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + N'-01' AS DateTime) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

