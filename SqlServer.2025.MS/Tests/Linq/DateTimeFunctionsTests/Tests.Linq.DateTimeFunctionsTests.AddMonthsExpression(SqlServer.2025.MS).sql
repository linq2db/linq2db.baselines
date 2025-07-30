BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	CAST(DateAdd(month, @Date, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

