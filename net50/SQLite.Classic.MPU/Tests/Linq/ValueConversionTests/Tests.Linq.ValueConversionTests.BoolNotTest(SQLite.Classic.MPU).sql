BeforeExecute
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
	[DateTimeNullable]        DateTime2         NULL,

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
	[BoolValue],
	[DateTimeNullable]
)
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','2020-02-29'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','2020-02-29'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','2020-02-29'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','2020-02-29'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','2020-02-29'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','2020-02-29'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N',NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @BoolValue_2 VarChar -- AnsiString
SET     @BoolValue_2 = 'N'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2],
	[t].[BoolValue]
FROM
	[ValueConversion] [t]
WHERE
	[t].[BoolValue] = @BoolValue_2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [ValueConversion]

