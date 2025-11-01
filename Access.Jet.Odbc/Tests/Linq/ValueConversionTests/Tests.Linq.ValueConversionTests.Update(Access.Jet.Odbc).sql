-- Access.Jet.Odbc AccessODBC
DECLARE @Value2 NVarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL

UPDATE
	[ValueConversion] [e]
SET
	[e].[Value1] = [e].[Value1],
	[e].[Value2] = ?,
	[e].[EnumWithNull] = ?,
	[e].[EnumWithNullDeclarative] = ?
WHERE
	[e].[Id] = 1

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC
DECLARE @Value1 NVarChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 NVarChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum NVarChar(6) -- String
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
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[ValueConversion] [t1]
SET
	[t1].[Value1] = ?,
	[t1].[Value2] = ?,
	[t1].[Enum] = ?,
	[t1].[EnumNullable] = ?,
	[t1].[EnumWithNull] = ?,
	[t1].[EnumWithNullDeclarative] = ?,
	[t1].[BoolValue] = ?,
	[t1].[AnotherBoolValue] = ?,
	[t1].[DateTimeNullable] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC
DECLARE @Value1 NVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar -- String
SET     @Value2 = NULL
DECLARE @Enum NVarChar(6) -- String
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
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int -- Int32
SET     @Id = 3

UPDATE
	[ValueConversion] [t1]
SET
	[t1].[Value1] = ?,
	[t1].[Value2] = ?,
	[t1].[Enum] = ?,
	[t1].[EnumNullable] = ?,
	[t1].[EnumWithNull] = ?,
	[t1].[EnumWithNullDeclarative] = ?,
	[t1].[BoolValue] = ?,
	[t1].[AnotherBoolValue] = ?,
	[t1].[DateTimeNullable] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC

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

