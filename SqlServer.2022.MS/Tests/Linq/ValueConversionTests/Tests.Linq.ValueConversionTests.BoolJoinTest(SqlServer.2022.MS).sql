BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ValueConversion]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @true_value VarChar -- AnsiString
SET     @true_value = N'Y'
DECLARE @true_value_1 VarChar -- AnsiString
SET     @true_value_1 = N'Y'

SELECT
	[t1].[Enum]
FROM
	[ValueConversion] [t1]
		INNER JOIN (
			SELECT
				*
			FROM
				[ValueConversion] [t2]
			WHERE
				[t2].[BoolValue] = @true_value
		) [t2_1] ON [t1].[BoolValue] = @true_value_1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ValueConversion]

