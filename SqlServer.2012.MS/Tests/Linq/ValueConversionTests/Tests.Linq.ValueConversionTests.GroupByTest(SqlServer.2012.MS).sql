BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @testedList NVarChar(200) -- String
SET     @testedList = N'[{"Value":"Value1"}]'

SELECT
	[m_1].[Key_1],
	[d].[Id],
	[d].[Value1],
	[d].[Value2],
	[d].[Enum],
	[d].[EnumNullable],
	[d].[EnumWithNull],
	[d].[EnumWithNullDeclarative],
	[d].[BoolValue],
	[d].[AnotherBoolValue],
	[d].[DateTimeNullable]
FROM
	(
		SELECT DISTINCT
			[t1].[Key_1]
		FROM
			(
				SELECT
					[t].[Id] as [Key_1]
				FROM
					[ValueConversion] [t]
				WHERE
					@testedList = [t].[Value2]
				GROUP BY
					[t].[Id]
			) [t1]
	) [m_1]
		INNER JOIN [ValueConversion] [d] ON [m_1].[Key_1] = [d].[Id]
WHERE
	@testedList = [d].[Value2]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @testedList NVarChar(200) -- String
SET     @testedList = N'[{"Value":"Value1"}]'

SELECT
	[g_1].[Id]
FROM
	[ValueConversion] [g_1]
WHERE
	@testedList = [g_1].[Value2]
GROUP BY
	[g_1].[Id]

