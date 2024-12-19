BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
	[f].[Key1],
	[f].[Key2],
	[f].[DataKey11],
	[f].[DataKey21],
	[f].[DataKey22],
	[f].[DataKey31],
	[f].[DataKey32],
	[f].[DataKey33],
	[f].[ValueStr]
FROM
	[SecondOptimizerData] [s]
		INNER JOIN [FirstOptimizerData] [f] ON [f].[DataKey11] = [s].[DataKey11]
WHERE
	[f].[ValueStr] LIKE 'Str%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

