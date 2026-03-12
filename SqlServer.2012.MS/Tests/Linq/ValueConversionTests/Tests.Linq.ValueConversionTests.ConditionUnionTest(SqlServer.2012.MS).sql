-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF([t1].[EnumNullable] IS NOT NULL, [t1].[EnumNullable], [t1].[Enum])
FROM
	[ValueConversion] [t1]
UNION ALL
SELECT
	IIF([t1_1].[EnumNullable] IS NOT NULL, [t1_1].[EnumNullable], [t1_1].[Enum])
FROM
	[ValueConversion] [t1_1]

