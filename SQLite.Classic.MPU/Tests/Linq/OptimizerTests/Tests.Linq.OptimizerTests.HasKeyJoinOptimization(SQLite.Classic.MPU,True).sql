BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FirstOptimizerData]
(
	[Key1]      INTEGER      NOT NULL,
	[Key2]      INTEGER      NOT NULL,
	[DataKey11] INTEGER      NOT NULL,
	[DataKey21] INTEGER      NOT NULL,
	[DataKey22] INTEGER      NOT NULL,
	[DataKey31] INTEGER      NOT NULL,
	[DataKey32] INTEGER      NOT NULL,
	[DataKey33] INTEGER      NOT NULL,
	[ValueStr]  NVarChar(50)     NULL,

	CONSTRAINT [PK_FirstOptimizerData] PRIMARY KEY ([Key1], [Key2])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [FirstOptimizerData]
(
	[Key1],
	[Key2],
	[DataKey11],
	[DataKey21],
	[DataKey22],
	[DataKey31],
	[DataKey32],
	[DataKey33],
	[ValueStr]
)
VALUES
(1,2,10,100,200,1000,2000,3000,'Str_0'),
(1,3,20,100,300,1000,2000,4000,'Str_1'),
(1,4,30,100,400,1000,2000,5000,'Str_2'),
(2,3,40,200,300,1000,3000,4000,'Str_3'),
(2,4,50,200,400,1000,3000,5000,'Str_4'),
(3,4,60,300,400,1000,4000,5000,'Str_5')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SecondOptimizerData]
(
	[Key1]      INTEGER      NOT NULL,
	[Key2]      INTEGER      NOT NULL,
	[DataKey11] INTEGER      NOT NULL,
	[DataKey21] INTEGER      NOT NULL,
	[DataKey22] INTEGER      NOT NULL,
	[DataKey31] INTEGER      NOT NULL,
	[DataKey32] INTEGER      NOT NULL,
	[DataKey33] INTEGER      NOT NULL,
	[ValueStr]  NVarChar(50)     NULL,

	CONSTRAINT [PK_SecondOptimizerData] PRIMARY KEY ([Key1], [Key2])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [SecondOptimizerData]
(
	[Key1],
	[Key2],
	[DataKey11],
	[DataKey21],
	[DataKey22],
	[DataKey31],
	[DataKey32],
	[DataKey33],
	[ValueStr]
)
VALUES
(1,2,10,100,200,1000,2000,3000,'Str_0'),
(1,3,20,100,300,1000,2000,4000,'Str_1'),
(1,4,30,100,400,1000,2000,5000,'Str_2'),
(2,3,40,200,300,1000,3000,4000,'Str_3'),
(2,4,50,200,400,1000,3000,5000,'Str_4'),
(3,4,60,300,400,1000,4000,5000,'Str_5')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[f1].[Key1],
	[f1].[Key2],
	[f1].[DataKey11],
	[f1].[DataKey21],
	[f1].[DataKey22],
	[f1].[DataKey31],
	[f1].[DataKey32],
	[f1].[DataKey33],
	[f1].[ValueStr],
	[f2].[Key1],
	[f2].[Key2],
	[f2].[DataKey11],
	[f2].[DataKey21],
	[f2].[DataKey22],
	[f2].[DataKey31],
	[f2].[DataKey32],
	[f2].[DataKey33],
	[f2].[ValueStr],
	[f3].[Key1],
	[f3].[Key2],
	[f3].[DataKey11],
	[f3].[DataKey21],
	[f3].[DataKey22],
	[f3].[DataKey31],
	[f3].[DataKey32],
	[f3].[DataKey33],
	[f3].[ValueStr],
	[f1].[Key1],
	[f1].[Key2],
	[f1].[DataKey11],
	[f1].[DataKey21],
	[f1].[DataKey22],
	[f1].[DataKey31],
	[f1].[DataKey32],
	[f1].[DataKey33],
	[f1].[ValueStr],
	[f2].[Key1],
	[f2].[Key2],
	[f2].[DataKey11],
	[f2].[DataKey21],
	[f2].[DataKey22],
	[f2].[DataKey31],
	[f2].[DataKey32],
	[f2].[DataKey33],
	[f2].[ValueStr],
	[f3].[Key1],
	[f3].[Key2],
	[f3].[DataKey11],
	[f3].[DataKey21],
	[f3].[DataKey22],
	[f3].[DataKey31],
	[f3].[DataKey32],
	[f3].[DataKey33],
	[f3].[ValueStr]
FROM
	[SecondOptimizerData] [s]
		INNER JOIN [FirstOptimizerData] [p2] ON [p2].[Key1] = [s].[Key1] AND [p2].[Key2] = [s].[Key2]
		INNER JOIN [FirstOptimizerData] [f1] ON [f1].[DataKey11] = [s].[DataKey11]
		INNER JOIN [FirstOptimizerData] [f2] ON [f2].[DataKey21] = [s].[DataKey21] AND [f2].[DataKey22] = [s].[DataKey22]
		INNER JOIN [FirstOptimizerData] [f3] ON [f3].[DataKey31] = [s].[DataKey31] AND [f3].[DataKey32] = [s].[DataKey32] AND [f3].[DataKey33] = [s].[DataKey33]
WHERE
	[f1].[ValueStr] IS NOT NULL AND [f2].[DataKey22] > 0 AND
	[f3].[Key1] > 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

