BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Convert(Date, DateAdd(quarter, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

