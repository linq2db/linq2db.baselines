BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @iteration Int -- Int32
SET     @iteration = 2
DECLARE @Value1 NVarChar(4000) -- String
SET     @Value1 = N'[]'
DECLARE @Enum NVarChar(50) -- String
SET     @Enum = N'Value1'
DECLARE @inserted NVarChar(200) -- String
SET     @inserted = N'[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- AnsiString
SET     @boolValue = N'Y'
DECLARE @boolValue_1 VarChar -- AnsiString
SET     @boolValue_1 = N'T'

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
-- SqlServer.2005.MS SqlServer.2005
DECLARE @iteration Int -- Int32
SET     @iteration = 2

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

