BeforeExecute
-- SqlServer.2008

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CAST(N'2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS DateTime2) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	DatePart(year, [t_1].[c1]) = 2010

