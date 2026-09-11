-- SqlServer.2019.MS SqlServer.2019
DECLARE @EnumNullable VarChar(50) -- AnsiString
SET     @EnumNullable = N'Value1'

SELECT
	COUNT(*)
FROM
	[ValueConversion] [t]
WHERE
	IIF([t].[EnumNullable] IS NOT NULL, [t].[EnumNullable], [t].[Enum]) = @EnumNullable

