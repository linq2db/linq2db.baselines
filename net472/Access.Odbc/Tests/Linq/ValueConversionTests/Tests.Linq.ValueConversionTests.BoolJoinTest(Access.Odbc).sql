﻿BeforeExecute
-- Access.Odbc AccessODBC

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

	CONSTRAINT [PK_ValueConversion] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str1"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value1"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str2"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value2"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str3"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value3"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str4"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value4"}]'
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

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str5"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value5"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str6"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value6"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str7"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value7"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str8"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value8"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str9"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value9"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Value1 NVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar -- String
SET     @Value2 = NULL
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[EnumNullable],
	[EnumWithNull],
	[EnumWithNullDeclarative],
	[BoolValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @BoolValue VarChar(1) -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @BoolValue_2 VarChar(1) -- AnsiString
SET     @BoolValue_2 = 'Y'

SELECT 
	[t1].[Enum]
FROM
	[ValueConversion] [t1]
		INNER JOIN ( 
			SELECT 
				[t2].[BoolValue]
			FROM
				[ValueConversion] [t2]
		) [t2_1] ON ([t2_1].[BoolValue] = ? AND [t1].[BoolValue] = ?)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ValueConversion]

