-- SqlServer.2005
DECLARE @EnumNullable VarChar(50) -- AnsiString
SET     @EnumNullable = N'Value1'

SELECT
	COUNT(*)
FROM
	[ValueConversion] [t]
WHERE
	CASE
		WHEN [t].[EnumNullable] IS NOT NULL THEN [t].[EnumNullable]
		ELSE [t].[Enum]
	END = @EnumNullable

