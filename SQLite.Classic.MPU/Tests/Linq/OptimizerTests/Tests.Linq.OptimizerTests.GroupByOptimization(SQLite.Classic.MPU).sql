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
	[s].[Key1],
	[s].[Key2],
	[s].[DataKey11],
	[s].[DataKey21],
	[s].[DataKey22],
	[s].[DataKey31],
	[s].[DataKey32],
	[s].[DataKey33],
	[s].[ValueStr],
	[u].[Count_1],
	[nu].[Count_1]
FROM
	[SecondOptimizerData] [s]
		LEFT JOIN (
			SELECT
				[g_1].[DataKey21],
				[g_1].[DataKey22],
				[g_1].[Key1],
				[g_1].[Key2],
				COUNT(*) as [Count_1]
			FROM
				[FirstOptimizerData] [g_1]
			GROUP BY
				[g_1].[Key1],
				[g_1].[Key2],
				[g_1].[DataKey21],
				[g_1].[DataKey22]
		) [u] ON [u].[DataKey21] = [s].[DataKey21] AND [u].[DataKey22] = [s].[DataKey22] AND [u].[Key1] = [s].[Key1] AND [u].[Key2] = [s].[Key2]
		LEFT JOIN (
			SELECT
				[g_2].[DataKey21],
				COUNT(*) as [Count_1]
			FROM
				[FirstOptimizerData] [g_2]
			GROUP BY
				[g_2].[Key1],
				[g_2].[Key2],
				[g_2].[DataKey21],
				[g_2].[DataKey22]
		) [nu] ON [nu].[DataKey21] = [s].[DataKey21] AND [nu].[DataKey21] = [s].[DataKey22]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Key1],
	[p].[Key2],
	[p].[DataKey11],
	[p].[DataKey21],
	[p].[DataKey22],
	[p].[DataKey31],
	[p].[DataKey32],
	[p].[DataKey33],
	[p].[ValueStr]
FROM
	[SecondOptimizerData] [p]
		LEFT JOIN (
			SELECT
				[g_1].[DataKey21]
			FROM
				[FirstOptimizerData] [g_1]
			GROUP BY
				[g_1].[Key1],
				[g_1].[Key2],
				[g_1].[DataKey21],
				[g_1].[DataKey22]
		) [nu] ON [nu].[DataKey21] = [p].[DataKey21] AND [nu].[DataKey21] = [p].[DataKey22]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

