-- SqlServer.Contained SqlServer.2019
DECLARE @flag Bit -- Boolean
SET     @flag = 1

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	@flag IN ([t].[BoolValue])

