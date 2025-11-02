-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 VarWChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @Value2 VarWChar(22) -- String
SET     @Value2 = '[{"Value":"inserted"}]'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
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

-- Access.Ace.OleDb AccessOleDb

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

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 VarWChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarWChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
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

-- Access.Ace.OleDb AccessOleDb

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

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 VarWChar(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 VarWChar(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'T'
DECLARE @DateTimeNullable Date -- DateTime
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

-- Access.Ace.OleDb AccessOleDb

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

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[ValueConversion] [t1]

