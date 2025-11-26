-- SqlCe

SELECT
	Coalesce([t1].[EnumNullable], [t1].[Enum]) as [Converted]
FROM
	[ValueConversion] [t1]

