BeforeExecute
-- SqlCe

CREATE TABLE [ValueConversion]
(
	[Id]                      Int           NOT NULL,
	[Value1]                  NVarChar(200)     NULL,
	[Value2]                  NVarChar(200)     NULL,
	[Enum]                    NVarChar(50)  NOT NULL,
	[EnumNullable]            NVarChar(50)      NULL,
	[EnumWithNull]            NVarChar(50)      NULL,
	[EnumWithNullDeclarative] NVarChar(50)      NULL,
	[BoolValue]               NVarChar(1)   NOT NULL,

	CONSTRAINT [PK_ValueConversion] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Enum],
	[Value2],
	[BoolValue]
)
VALUES
(
	1,
	'[]',
	'Value1',
	'[{"Value":"inserted"}]',
	'Y'
)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[e].[Id], 
	[e].[Value1], 
	[e].[Value2], 
	[e].[Enum], 
	[e].[EnumNullable], 
	[e].[EnumWithNull], 
	[e].[EnumWithNullDeclarative], 
	[e].[BoolValue]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- SqlCe

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Value2],
	[Enum],
	[BoolValue]
)
VALUES
(
	2,
	NULL,
	NULL,
	'Value2',
	'N'
)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[e].[Id], 
	[e].[Value1], 
	[e].[Value2], 
	[e].[Enum], 
	[e].[EnumNullable], 
	[e].[EnumWithNull], 
	[e].[EnumWithNullDeclarative], 
	[e].[BoolValue]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 2

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value1 NVarChar(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 NVarChar(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable NVarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull NVarChar(6) -- String
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative NVarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue NVarChar -- String
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
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue
)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[e].[Id], 
	[e].[Value1], 
	[e].[Value2], 
	[e].[Enum], 
	[e].[EnumNullable], 
	[e].[EnumWithNull], 
	[e].[EnumWithNullDeclarative], 
	[e].[BoolValue]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 3

BeforeExecute
-- SqlCe

SELECT 
	Count(*)
FROM
	[ValueConversion] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [ValueConversion]

