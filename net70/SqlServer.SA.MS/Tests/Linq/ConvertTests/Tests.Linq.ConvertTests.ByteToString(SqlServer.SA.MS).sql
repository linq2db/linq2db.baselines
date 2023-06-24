BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(NVarChar(3), Convert(TinyInt, [t].[ID])) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	LEN(REPLACE([p].[c1],' ','.')) > 0

