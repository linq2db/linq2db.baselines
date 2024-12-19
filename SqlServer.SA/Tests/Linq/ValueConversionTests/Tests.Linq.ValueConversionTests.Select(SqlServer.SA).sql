BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ValueConversion]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		[AnotherBoolValue]        VarChar(1)    NOT NULL,
		[DateTimeNullable]        DateTime2         NULL,

		CONSTRAINT [PK_ValueConversion] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
(1,N'{"some":"str1"}',N'[{"Value":"Value1"}]',N'Value1','Value1','Value1','Value1','Y','F',NULL),
(2,N'{"some":"str2"}',N'[{"Value":"Value2"}]',N'Value2','Value2','Value2','Value2','N','F',DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)),
(3,N'{"some":"str3"}',N'[{"Value":"Value3"}]',N'Value3','Value3','Value3','Value3','N','F',DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)),
(4,N'{"some":"str4"}',N'[{"Value":"Value4"}]',N'Value1',NULL,NULL,NULL,'N','F',NULL),
(5,N'{"some":"str5"}',N'[{"Value":"Value5"}]',N'Value2','Value1','Value1','Value1','Y','F',DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)),
(6,N'{"some":"str6"}',N'[{"Value":"Value6"}]',N'Value3','Value2','Value2','Value2','N','F',DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)),
(7,N'{"some":"str7"}',N'[{"Value":"Value7"}]',N'Value1','Value3','Value3','Value3','N','F',NULL),
(8,N'{"some":"str8"}',N'[{"Value":"Value8"}]',N'Value2',NULL,NULL,NULL,'N','F',DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)),
(9,N'{"some":"str9"}',N'[{"Value":"Value9"}]',N'Value3','Value1','Value1','Value1','Y','F',DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)),
(10,NULL,NULL,N'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Enum],
	[t1].[EnumNullable],
	[t1].[EnumWithNull],
	[t1].[EnumWithNullDeclarative],
	[t1].[BoolValue],
	[t1].[AnotherBoolValue],
	[t1].[DateTimeNullable]
FROM
	[ValueConversion] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2]
FROM
	[ValueConversion] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value1],
			[t].[Value2]
		FROM
			[ValueConversion] [t]
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t2].[Id],
	[t2].[Value1],
	[t2].[Value2]
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value1],
			[t].[Value2]
		FROM
			[ValueConversion] [t]
		UNION ALL
		SELECT
			[t1].[Id],
			[t1].[Value1],
			[t1].[Value2]
		FROM
			(
				SELECT
					[t_1].[Id],
					[t_1].[Value1],
					[t_1].[Value2]
				FROM
					[ValueConversion] [t_1]
			) [t1]
	) [t2]
ORDER BY
	[t2].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t1].[Value2]
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value2]
		FROM
			[ValueConversion] [t]
	) [t1]
ORDER BY
	[t1].[Id]
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ValueConversion]

