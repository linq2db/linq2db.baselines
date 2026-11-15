-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t2].[Converted1],
	[t2].[Converted2],
	[t2].[Converted1] as [Converted1_1]
FROM
	(
		SELECT
			CASE
				WHEN [t1].[EnumNullable] IS NULL THEN [t1].[Enum]
				ELSE [t1].[EnumNullable]
			END as [Converted1],
			[t1].[Value1] as [Converted2]
		FROM
			[ValueConversion] [t1]
	) [t2]
UNION
SELECT
	CASE
		WHEN [t1_1].[EnumNullable] IS NULL THEN [t1_1].[Enum]
		ELSE [t1_1].[EnumNullable]
	END as [Converted1],
	[t1_1].[Value1] as [Converted2],
	CASE
		WHEN [t1_1].[EnumNullable] IS NULL THEN [t1_1].[Enum]
		ELSE [t1_1].[EnumNullable]
	END as [Converted1_1]
FROM
	[ValueConversion] [t1_1]

