BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueConversion') IS NOT NULL)
	DROP TABLE [ValueConversion]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueConversion') IS NULL)
	EXECUTE('
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
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @testedList UniVarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2]
FROM
	[ValueConversion] [t]
WHERE
	@testedList = [t].[Value2] AND [t].[Value2] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueConversion') IS NOT NULL)
	DROP TABLE [ValueConversion]

