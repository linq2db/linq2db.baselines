-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 UniVarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum UniVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @Value2 UniVarChar(22) -- String
SET     @Value2 = '[{"Value":"inserted"}]'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'T'

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
	@Id,
	@Value1,
	@Enum,
	@Value2,
	@BoolValue,
	@AnotherBoolValue
)

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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 UniVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 UniVarChar -- String
SET     @Value2 = NULL
DECLARE @Enum UniVarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'F'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[BoolValue],
	[AnotherBoolValue]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@BoolValue,
	@AnotherBoolValue
)

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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 UniVarChar(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 UniVarChar(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum UniVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'T'
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL

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
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

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

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[ValueConversion] [t1]

