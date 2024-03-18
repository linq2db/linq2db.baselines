BeforeExecute
-- SqlCe

DROP TABLE [ValueConversion]

BeforeExecute
-- SqlCe

CREATE TABLE [ValueConversion]
(
	[Id]                      Int           NOT NULL,
	[Value1]                  NVarChar(200)     NULL,
	[Value2]                  NVarChar(200)     NULL,
	[Enum]                    NVarChar(50)  NOT NULL,
	[EnumNullable]            NVarChar(50)      NULL,
	[EnumWithNull]            NVarChar(50)      NULL,
	[EnumWithNullDeclarative] NVarChar(50)      NULL,
	[BoolValue]               NVarChar(1)   NOT NULL,
	[AnotherBoolValue]        NVarChar(1)   NOT NULL,
	[DateTimeNullable]        DateTime          NULL,

	CONSTRAINT [PK_ValueConversion] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

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
SELECT 1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL UNION ALL
SELECT 2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F','2020-02-29' UNION ALL
SELECT 3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F','2020-02-29' UNION ALL
SELECT 4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL UNION ALL
SELECT 5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F','2020-02-29' UNION ALL
SELECT 6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F','2020-02-29' UNION ALL
SELECT 7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL UNION ALL
SELECT 8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F','2020-02-29' UNION ALL
SELECT 9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F','2020-02-29' UNION ALL
SELECT 10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe
DECLARE @testedList NVarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	[m_1].[Id],
	[m_1].[Id] as [Id_1],
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
-- SqlCe
DECLARE @testedList NVarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	[g_1].[Id]
FROM
	[ValueConversion] [g_1]
WHERE
	@testedList = [g_1].[Value2]
GROUP BY
	[g_1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [ValueConversion]

