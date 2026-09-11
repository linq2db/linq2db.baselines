-- SqlServer.2025.MS SqlServer.2025
DECLARE @EnumNullable VarChar(50) -- AnsiString
SET     @EnumNullable = N'Value1'

SELECT
	COUNT(*)
FROM
	[ValueConversion] [t]
WHERE
	IIF([t].[EnumNullable] IS NOT NULL, [t].[EnumNullable], [t].[Enum]) = @EnumNullable

