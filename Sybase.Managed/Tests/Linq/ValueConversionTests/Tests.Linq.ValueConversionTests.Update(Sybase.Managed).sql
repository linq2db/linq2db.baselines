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
DECLARE @Value2 UniVarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL

UPDATE
	[ValueConversion]
SET
	[Value1] = [ValueConversion].[Value1],
	[Value2] = @Value2,
	[EnumWithNull] = @EnumWithNull,
	[EnumWithNullDeclarative] = @EnumWithNullDeclarative
WHERE
	[ValueConversion].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[e].[Id],
	[e].[Value1],
	[e].[Value2],
	[e].[Enum],
	[e].[EnumNullable],
	[e].[EnumWithNull],
	[e].[EnumWithNullDeclarative],
	[e].[BoolValue],
	[e].[AnotherBoolValue],
	[e].[DateTimeNullable]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value1 UniVarChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 UniVarChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum UniVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	[ValueConversion]
SET
	[Value1] = @Value1,
	[Value2] = @Value2,
	[Enum] = @Enum,
	[EnumNullable] = @EnumNullable,
	[EnumWithNull] = @EnumWithNull,
	[EnumWithNullDeclarative] = @EnumWithNullDeclarative,
	[BoolValue] = @BoolValue,
	[AnotherBoolValue] = @AnotherBoolValue,
	[DateTimeNullable] = @DateTimeNullable
WHERE
	[ValueConversion].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[e].[Id],
	[e].[Value1],
	[e].[Value2],
	[e].[Enum],
	[e].[EnumNullable],
	[e].[EnumWithNull],
	[e].[EnumWithNullDeclarative],
	[e].[BoolValue],
	[e].[AnotherBoolValue],
	[e].[DateTimeNullable]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value1 UniVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 UniVarChar -- String
SET     @Value2 = NULL
DECLARE @Enum UniVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 3

UPDATE
	[ValueConversion]
SET
	[Value1] = @Value1,
	[Value2] = @Value2,
	[Enum] = @Enum,
	[EnumNullable] = @EnumNullable,
	[EnumWithNull] = @EnumWithNull,
	[EnumWithNullDeclarative] = @EnumWithNullDeclarative,
	[BoolValue] = @BoolValue,
	[AnotherBoolValue] = @AnotherBoolValue,
	[DateTimeNullable] = @DateTimeNullable
WHERE
	[ValueConversion].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[e].[Id],
	[e].[Value1],
	[e].[Value2],
	[e].[Enum],
	[e].[EnumNullable],
	[e].[EnumWithNull],
	[e].[EnumWithNullDeclarative],
	[e].[BoolValue],
	[e].[AnotherBoolValue],
	[e].[DateTimeNullable]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 3

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueConversion') IS NOT NULL)
	DROP TABLE [ValueConversion]

