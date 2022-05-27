BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Date_1 DateTime
SET     @Date_1 = CAST('2009-09-20T00:00:00.000' AS DATETIME)

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[BinaryValue],
	[_].[SmallIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	Cast(Floor(Cast([_].[DateTimeValue] as Float)) as DateTime) = @Date_1

