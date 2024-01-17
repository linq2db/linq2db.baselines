﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NOT NULL)
	DROP TABLE [ValueConversion]

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

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
(2,N'{"some":"str2"}',N'[{"Value":"Value2"}]',N'Value2','Value2','Value2','Value2','N','F',CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)),
(3,N'{"some":"str3"}',N'[{"Value":"Value3"}]',N'Value3','Value3','Value3','Value3','N','F',CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)),
(4,N'{"some":"str4"}',N'[{"Value":"Value4"}]',N'Value1',NULL,NULL,NULL,'N','F',NULL),
(5,N'{"some":"str5"}',N'[{"Value":"Value5"}]',N'Value2','Value1','Value1','Value1','Y','F',CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)),
(6,N'{"some":"str6"}',N'[{"Value":"Value6"}]',N'Value3','Value2','Value2','Value2','N','F',CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)),
(7,N'{"some":"str7"}',N'[{"Value":"Value7"}]',N'Value1','Value3','Value3','Value3','N','F',NULL),
(8,N'{"some":"str8"}',N'[{"Value":"Value8"}]',N'Value2',NULL,NULL,NULL,'N','F',CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)),
(9,N'{"some":"str9"}',N'[{"Value":"Value9"}]',N'Value3','Value1','Value1','Value1','Y','F',CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)),
(10,NULL,NULL,N'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN [t1].[EnumNullable] IS NOT NULL
			THEN [t1].[EnumNullable]
		ELSE [t1].[Enum]
	END
FROM
	[ValueConversion] [t1]
UNION ALL
SELECT
	CASE
		WHEN [t1_1].[EnumNullable] IS NOT NULL
			THEN [t1_1].[EnumNullable]
		ELSE [t1_1].[Enum]
	END
FROM
	[ValueConversion] [t1_1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NOT NULL)
	DROP TABLE [ValueConversion]

