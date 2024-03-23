BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ValueConversion]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ValueConversion]
(
	[Id]                      INTEGER       NOT NULL,
	[Value1]                  NVarChar(200)     NULL,
	[Value2]                  NVarChar(200)     NULL,
	[Enum]                    NVarChar(50)  NOT NULL,
	[EnumNullable]            VarChar(50)       NULL,
	[EnumWithNull]            VarChar(50)       NULL,
	[EnumWithNullDeclarative] VarChar(50)       NULL,
	[BoolValue]               VarChar(1)    NOT NULL,
	[AnotherBoolValue]        VarChar(1)    NOT NULL,
	[DateTimeNullable]        DateTime2         NULL,

	CONSTRAINT [PK_ValueConversion] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @iteration  -- Int32
SET     @iteration = 2
DECLARE @Value1 NVarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted NVarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue VarChar(1) -- AnsiString
SET     @boolValue = 'Y'
DECLARE @boolValue_1 VarChar(1) -- AnsiString
SET     @boolValue_1 = 'T'

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
-- SQLite.MS SQLite
DECLARE @iteration  -- Int32
SET     @iteration = 2

SELECT
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
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ValueConversion]

