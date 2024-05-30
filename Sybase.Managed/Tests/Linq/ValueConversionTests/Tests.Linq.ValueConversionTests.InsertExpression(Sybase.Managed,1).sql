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
DECLARE @iteration Integer -- Int32
SET     @iteration = 1
DECLARE @Value1 UniVarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum UniVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted UniVarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- AnsiString
SET     @boolValue = 'N'
DECLARE @boolValue_1 VarChar -- AnsiString
SET     @boolValue_1 = 'F'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Enum],
	[Value2],
	[BoolValue],
	[AnotherBoolValue]
)
VALUES
(
	@iteration,
	@Value1,
	@Enum,
	@inserted,
	@boolValue,
	@boolValue_1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @iteration Integer -- Int32
SET     @iteration = 1

SELECT TOP 2
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
	[e].[Id] = @iteration

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueConversion') IS NOT NULL)
	DROP TABLE [ValueConversion]

