BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @false_value VarChar -- AnsiString
SET     @false_value = N'N'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2],
	[t].[BoolValue]
FROM
	[ValueConversion] [t]
WHERE
	[t].[BoolValue] = @false_value

