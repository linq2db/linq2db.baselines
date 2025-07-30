BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t2].[Converted1],
	[t2].[Converted2],
	[t2].[Converted1]
FROM
	(
		SELECT
			IIF([t1].[EnumNullable] IS NULL, [t1].[Enum], [t1].[EnumNullable]) as [Converted1],
			[t1].[Value1] as [Converted2]
		FROM
			[ValueConversion] [t1]
	) [t2]
UNION
SELECT
	IIF([t1_1].[EnumNullable] IS NULL, [t1_1].[Enum], [t1_1].[EnumNullable]),
	[t1_1].[Value1],
	IIF([t1_1].[EnumNullable] IS NULL, [t1_1].[Enum], [t1_1].[EnumNullable])
FROM
	[ValueConversion] [t1_1]

