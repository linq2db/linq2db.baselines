﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [ValueConversion]
(
	[Id]                      INTEGER       NOT NULL,
	[Value1]                  NVarChar(200)     NULL,
	[Value2]                  NVarChar(200)     NULL,
	[Enum]                    NVarChar(50)  NOT NULL,
	[EnumNullable]            VarChar(50)       NULL,
	[EnumWithNull]            VarChar(50)       NULL,
	[EnumWithNullDeclarative] VarChar(50)       NULL,
	[BoolValue]               VarChar(1)    NOT NULL,

	CONSTRAINT [PK_ValueConversion] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y'),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N'),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N'),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'
DECLARE @BoolValue_2 VarChar -- AnsiString
SET     @BoolValue_2 = 'Y'

SELECT
	[t1].[Enum]
FROM
	[ValueConversion] [t1]
		INNER JOIN (
			SELECT
				[t2].[BoolValue]
			FROM
				[ValueConversion] [t2]
		) [t2_1] ON [t2_1].[BoolValue] = @BoolValue AND [t1].[BoolValue] = @BoolValue_2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [ValueConversion]

