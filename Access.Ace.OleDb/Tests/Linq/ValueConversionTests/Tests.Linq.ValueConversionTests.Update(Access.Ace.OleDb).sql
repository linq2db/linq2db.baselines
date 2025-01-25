BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value2 VarWChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL

UPDATE
	[ValueConversion] [e]
SET
	[e].[Value1] = [e].[Value1],
	[e].[Value2] = @Value2,
	[e].[EnumWithNull] = @EnumWithNull,
	[e].[EnumWithNullDeclarative] = @EnumWithNullDeclarative
WHERE
	[e].[Id] = 1

BeforeExecute
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

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value1 VarWChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 VarWChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Date -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	[ValueConversion] [t1]
SET
	[t1].[Value1] = @Value1,
	[t1].[Value2] = @Value2,
	[t1].[Enum] = @Enum,
	[t1].[EnumNullable] = @EnumNullable,
	[t1].[EnumWithNull] = @EnumWithNull,
	[t1].[EnumWithNullDeclarative] = @EnumWithNullDeclarative,
	[t1].[BoolValue] = @BoolValue,
	[t1].[AnotherBoolValue] = @AnotherBoolValue,
	[t1].[DateTimeNullable] = @DateTimeNullable
WHERE
	[t1].[Id] = @Id

BeforeExecute
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

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value1 VarWChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarWChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Date -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 3

UPDATE
	[ValueConversion] [t1]
SET
	[t1].[Value1] = @Value1,
	[t1].[Value2] = @Value2,
	[t1].[Enum] = @Enum,
	[t1].[EnumNullable] = @EnumNullable,
	[t1].[EnumWithNull] = @EnumWithNull,
	[t1].[EnumWithNullDeclarative] = @EnumWithNullDeclarative,
	[t1].[BoolValue] = @BoolValue,
	[t1].[AnotherBoolValue] = @AnotherBoolValue,
	[t1].[DateTimeNullable] = @DateTimeNullable
WHERE
	[t1].[Id] = @Id

BeforeExecute
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

