-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t1].[EnumNullable] IS NULL THEN [t1].[Enum]
		ELSE [t1].[EnumNullable]
	END
FROM
	[ValueConversion] [t1]

