﻿BeforeExecute
--  SqlCe
DECLARE @iteration Int -- Int32
SET     @iteration = 1
DECLARE @Value1 NVarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted NVarChar(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue NVarChar -- String
SET     @boolValue = 'N'
DECLARE @boolValue_1 NVarChar -- String
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
--  SqlCe
DECLARE @iteration Int -- Int32
SET     @iteration = 1

SELECT TOP (2)
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

