﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [ValueConversion]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017
DECLARE @BoolValue_1 VarChar -- AnsiString
SET     @BoolValue_1 = N'N'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2],
	[t].[BoolValue]
FROM
	[ValueConversion] [t]
WHERE
	[t].[BoolValue] = @BoolValue_1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [ValueConversion]

