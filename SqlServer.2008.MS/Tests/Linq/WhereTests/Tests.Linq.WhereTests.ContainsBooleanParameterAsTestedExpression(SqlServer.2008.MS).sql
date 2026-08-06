-- SqlServer.2008.MS SqlServer.2008
DECLARE @flag Bit -- Boolean
SET     @flag = 1

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	@flag IN ([t].[BoolValue])

