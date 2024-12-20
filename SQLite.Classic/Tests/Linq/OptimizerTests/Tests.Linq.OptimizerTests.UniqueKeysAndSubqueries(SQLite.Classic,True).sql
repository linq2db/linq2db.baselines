BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
	[f2].[ValueStr]
FROM
	[SecondOptimizerData] [s]
		LEFT JOIN [FirstOptimizerData] [f1] ON [f1].[DataKey11] = [s].[DataKey11] AND [f1].[ValueStr] LIKE 'Str%' ESCAPE '~'
		LEFT JOIN [FirstOptimizerData] [f2] ON [f2].[DataKey11] = 10 AND [f2].[ValueStr] LIKE 'Str%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[q].[Key1],
	[q].[Key2],
	[q].[DataKey11],
	[q].[DataKey21],
	[q].[DataKey22],
	[q].[DataKey31],
	[q].[DataKey32],
	[q].[DataKey33],
	[q].[ValueStr]
FROM
	[SecondOptimizerData] [q]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

