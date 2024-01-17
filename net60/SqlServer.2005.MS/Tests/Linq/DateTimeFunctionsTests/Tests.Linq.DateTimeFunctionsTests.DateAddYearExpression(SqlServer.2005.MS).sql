BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 11

SELECT
	DateAdd(year, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

