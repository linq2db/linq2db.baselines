BeforeExecute
--  SqlServer.2005

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-01-01' AS DateTime)
FROM
	[LinqDataTypes] [t]

