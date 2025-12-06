-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
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

