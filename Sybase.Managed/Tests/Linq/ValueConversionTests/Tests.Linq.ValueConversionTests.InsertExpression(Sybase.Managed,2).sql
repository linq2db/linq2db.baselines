﻿BeforeExecute
--  Sybase.Managed Sybase
DECLARE @iteration Integer -- Int32
SET     @iteration = 2
DECLARE @Value1 UniVarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum UniVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted UniVarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- AnsiString
SET     @boolValue = 'Y'
DECLARE @boolValue_1 VarChar -- AnsiString
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
--  Sybase.Managed Sybase
DECLARE @iteration Integer -- Int32
SET     @iteration = 2

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

