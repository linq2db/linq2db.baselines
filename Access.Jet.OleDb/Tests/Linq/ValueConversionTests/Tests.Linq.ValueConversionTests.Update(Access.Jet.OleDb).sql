BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ValueConversion]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str1"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value1"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str2"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value2"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Date -- DateTime
SET     @DateTimeNullable = #2020-02-29#

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str3"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value3"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Date -- DateTime
SET     @DateTimeNullable = #2020-02-29#

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str4"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value4"}]'
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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str5"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value5"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Date -- DateTime
SET     @DateTimeNullable = #2020-02-29#

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str6"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value6"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Date -- DateTime
SET     @DateTimeNullable = #2020-02-29#

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str7"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value7"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str8"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value8"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value2'
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
SET     @DateTimeNullable = #2020-02-29#

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value1 VarWChar(15) -- String
SET     @Value1 = '{"some":"str9"}'
DECLARE @Value2 VarWChar(20) -- String
SET     @Value2 = '[{"Value":"Value9"}]'
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Date -- DateTime
SET     @DateTimeNullable = #2020-02-29#

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value1 VarWChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarWChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarWChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ValueConversion]

