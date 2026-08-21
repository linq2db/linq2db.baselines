-- Access.Jet.OleDb AccessOleDb
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'

SELECT
	COUNT(*)
FROM
	[ValueConversion] [t]
WHERE
	IIF([t].[EnumNullable] IS NOT NULL, [t].[EnumNullable], [t].[Enum]) = @EnumNullable

