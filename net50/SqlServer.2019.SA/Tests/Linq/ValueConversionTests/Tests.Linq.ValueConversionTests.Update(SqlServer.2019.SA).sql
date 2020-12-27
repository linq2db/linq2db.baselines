BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NOT NULL)
	DROP TABLE [ValueConversion]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NULL)
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
		[DateTimeNullable]        DateTime          NULL,

		CONSTRAINT [PK_ValueConversion] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
	[DateTimeNullable]
)
VALUES
(1,N'{"some":"str1"}',N'[{"Value":"Value1"}]',N'Value1','Value1','Value1','Value1','Y',NULL),
(2,N'{"some":"str2"}',N'[{"Value":"Value2"}]',N'Value2','Value2','Value2','Value2','N','2020-02-29T00:00:00'),
(3,N'{"some":"str3"}',N'[{"Value":"Value3"}]',N'Value3','Value3','Value3','Value3','N','2020-02-29T00:00:00'),
(4,N'{"some":"str4"}',N'[{"Value":"Value4"}]',N'Value1',NULL,NULL,NULL,'N',NULL),
(5,N'{"some":"str5"}',N'[{"Value":"Value5"}]',N'Value2','Value1','Value1','Value1','Y','2020-02-29T00:00:00'),
(6,N'{"some":"str6"}',N'[{"Value":"Value6"}]',N'Value3','Value2','Value2','Value2','N','2020-02-29T00:00:00'),
(7,N'{"some":"str7"}',N'[{"Value":"Value7"}]',N'Value1','Value3','Value3','Value3','N',NULL),
(8,N'{"some":"str8"}',N'[{"Value":"Value8"}]',N'Value2',NULL,NULL,NULL,'N','2020-02-29T00:00:00'),
(9,N'{"some":"str9"}',N'[{"Value":"Value9"}]',N'Value3','Value1','Value1','Value1','Y','2020-02-29T00:00:00'),
(10,NULL,NULL,N'Value1','Value2','Value2','Value2','N',NULL)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Value2 NVarChar(200) -- String
SET     @Value2 = N'[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar(50) -- AnsiString
SET     @EnumWithNull = NULL

UPDATE
	[e]
SET
	[e].[Value1] = [e].[Value1],
	[e].[Value2] = @Value2,
	[e].[EnumWithNull] = @EnumWithNull,
	[e].[EnumWithNullDeclarative] = @EnumWithNull
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
	[e].[BoolValue],
	[e].[DateTimeNullable]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Value1 NVarChar(200) -- String
SET     @Value1 = N'{"some":"updated2}"}'
DECLARE @Value2 NVarChar(200) -- String
SET     @Value2 = N'[{"Value":"updated2"}]'
DECLARE @Enum NVarChar(50) -- String
SET     @Enum = N'Value1'
DECLARE @EnumNullable VarChar(50) -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(50) -- AnsiString
SET     @EnumWithNull = N'Value2'
DECLARE @EnumWithNullDeclarative VarChar(50) -- AnsiString
SET     @EnumWithNullDeclarative = N'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = N'N'
DECLARE @DateTimeNullable DateTime2
SET     @DateTimeNullable = NULL
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[t1]
SET
	[t1].[Value1] = @Value1,
	[t1].[Value2] = @Value2,
	[t1].[Enum] = @Enum,
	[t1].[EnumNullable] = @EnumNullable,
	[t1].[EnumWithNull] = @EnumWithNull,
	[t1].[EnumWithNullDeclarative] = @EnumWithNullDeclarative,
	[t1].[BoolValue] = @BoolValue,
	[t1].[DateTimeNullable] = @DateTimeNullable
FROM
	[ValueConversion] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
	[e].[BoolValue],
	[e].[DateTimeNullable]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 2

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Value1 NVarChar(200) -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar(200) -- String
SET     @Value2 = NULL
DECLARE @Enum NVarChar(50) -- String
SET     @Enum = N'Value1'
DECLARE @EnumNullable VarChar(50) -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(50) -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar(50) -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = N'N'
DECLARE @DateTimeNullable DateTime2
SET     @DateTimeNullable = NULL
DECLARE @Id Int -- Int32
SET     @Id = 3

UPDATE
	[t1]
SET
	[t1].[Value1] = @Value1,
	[t1].[Value2] = @Value2,
	[t1].[Enum] = @Enum,
	[t1].[EnumNullable] = @EnumNullable,
	[t1].[EnumWithNull] = @EnumWithNull,
	[t1].[EnumWithNullDeclarative] = @EnumWithNullDeclarative,
	[t1].[BoolValue] = @BoolValue,
	[t1].[DateTimeNullable] = @DateTimeNullable
FROM
	[ValueConversion] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
	[e].[BoolValue],
	[e].[DateTimeNullable]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = 3

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NOT NULL)
	DROP TABLE [ValueConversion]

