BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @true_value VarChar -- AnsiString
SET     @true_value = N'Y'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2],
	[t].[BoolValue]
FROM
	[ValueConversion] [t]
WHERE
	[t].[BoolValue] = @true_value

