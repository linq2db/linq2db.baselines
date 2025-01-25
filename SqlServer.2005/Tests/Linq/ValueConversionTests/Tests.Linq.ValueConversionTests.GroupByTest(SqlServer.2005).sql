BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NOT NULL)
	DROP TABLE [ValueConversion]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NULL)
	CREATE TABLE [ValueConversion]
	(
		[Id]                      Int           NOT NULL,
		[Value1]                  NVarChar(200)     NULL,
		[Value2]                  NVarChar(200)     NULL,
		[Enum]                    NVarChar(50)  NOT NULL,
		[EnumNullable]            VarChar(50)       NULL,
		[EnumWithNull]            VarChar(50)       NULL,
		[EnumWithNullDeclarative] VarChar(50)       NULL,
		[BoolValue]               VarChar(1)    NOT NULL,
		[AnotherBoolValue]        VarChar(1)    NOT NULL,
		[DateTimeNullable]        DateTime          NULL,

		CONSTRAINT [PK_ValueConversion] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue],
	[AnotherBoolValue],
	[DateTimeNullable]
)
SELECT 1,N'{"some":"str1"}',N'[{"Value":"Value1"}]',N'Value1','Value1','Value1','Value1','Y','F',NULL UNION ALL
SELECT 2,N'{"some":"str2"}',N'[{"Value":"Value2"}]',N'Value2','Value2','Value2','Value2','N','F',CAST('2020-02-29T00:00:00.000' AS DATETIME) UNION ALL
SELECT 3,N'{"some":"str3"}',N'[{"Value":"Value3"}]',N'Value3','Value3','Value3','Value3','N','F',CAST('2020-02-29T00:00:00.000' AS DATETIME) UNION ALL
SELECT 4,N'{"some":"str4"}',N'[{"Value":"Value4"}]',N'Value1',NULL,NULL,NULL,'N','F',NULL UNION ALL
SELECT 5,N'{"some":"str5"}',N'[{"Value":"Value5"}]',N'Value2','Value1','Value1','Value1','Y','F',CAST('2020-02-29T00:00:00.000' AS DATETIME) UNION ALL
SELECT 6,N'{"some":"str6"}',N'[{"Value":"Value6"}]',N'Value3','Value2','Value2','Value2','N','F',CAST('2020-02-29T00:00:00.000' AS DATETIME) UNION ALL
SELECT 7,N'{"some":"str7"}',N'[{"Value":"Value7"}]',N'Value1','Value3','Value3','Value3','N','F',NULL UNION ALL
SELECT 8,N'{"some":"str8"}',N'[{"Value":"Value8"}]',N'Value2',NULL,NULL,NULL,'N','F',CAST('2020-02-29T00:00:00.000' AS DATETIME) UNION ALL
SELECT 9,N'{"some":"str9"}',N'[{"Value":"Value9"}]',N'Value3','Value1','Value1','Value1','Y','F',CAST('2020-02-29T00:00:00.000' AS DATETIME) UNION ALL
SELECT 10,NULL,NULL,N'Value1','Value2','Value2','Value2','N','F',NULL

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005
DECLARE @testedList NVarChar(200) -- String
SET     @testedList = N'[{"Value":"Value1"}]'

SELECT
	[m_1].[Id],
	[m_1].[Id],
	[m_1].[Value1],
	[m_1].[Value2],
	[m_1].[Enum],
	[m_1].[EnumNullable],
	[m_1].[EnumWithNull],
	[m_1].[EnumWithNullDeclarative],
	[m_1].[BoolValue],
	[m_1].[AnotherBoolValue],
	[m_1].[DateTimeNullable]
FROM
	[ValueConversion] [m_1]
WHERE
	@testedList = [m_1].[Value2] AND @testedList = [m_1].[Value2]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005
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

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NOT NULL)
	DROP TABLE [ValueConversion]

