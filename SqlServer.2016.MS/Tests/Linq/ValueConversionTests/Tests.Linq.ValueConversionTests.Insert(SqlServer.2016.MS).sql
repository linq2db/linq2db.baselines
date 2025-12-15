-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value1 NVarChar(200) -- String
SET     @Value1 = N'[]'
DECLARE @Enum NVarChar(50) -- String
SET     @Enum = N'Value1'
DECLARE @Value2 NVarChar(200) -- String
SET     @Value2 = N'[{"Value":"inserted"}]'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = N'Y'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = N'T'

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

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
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

-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value1 NVarChar(200) -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar(200) -- String
SET     @Value2 = NULL
DECLARE @Enum NVarChar(50) -- String
SET     @Enum = N'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = N'N'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = N'F'

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

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
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

-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value1 NVarChar(200) -- String
SET     @Value1 = N'{"some":"inserted3}"}'
DECLARE @Value2 NVarChar(200) -- String
SET     @Value2 = N'[{"Value":"inserted3"}]'
DECLARE @Enum NVarChar(50) -- String
SET     @Enum = N'Value3'
DECLARE @EnumNullable VarChar(50) -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(50) -- AnsiString
SET     @EnumWithNull = N'Value1'
DECLARE @EnumWithNullDeclarative VarChar(50) -- AnsiString
SET     @EnumWithNullDeclarative = N'Value1'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = N'Y'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = N'T'
DECLARE @DateTimeNullable DateTime2
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

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
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

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[ValueConversion] [t1]

