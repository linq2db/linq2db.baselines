-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	IIF([t1].[EnumNullable] IS NULL, [t1].[Enum], [t1].[EnumNullable])
FROM
	[ValueConversion] [t1]

