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
DECLARE @Key1  -- Int32
SET     @Key1 = 1
DECLARE @Key2  -- Int32
SET     @Key2 = 2
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 10
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 200
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 3000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_0'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 1
DECLARE @Key2  -- Int32
SET     @Key2 = 3
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 20
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_1'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 1
DECLARE @Key2  -- Int32
SET     @Key2 = 4
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 30
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_2'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 2
DECLARE @Key2  -- Int32
SET     @Key2 = 3
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 40
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_3'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 2
DECLARE @Key2  -- Int32
SET     @Key2 = 4
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 50
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_4'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 3
DECLARE @Key2  -- Int32
SET     @Key2 = 4
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 60
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 300
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 4000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_5'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

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
DECLARE @Key1  -- Int32
SET     @Key1 = 1
DECLARE @Key2  -- Int32
SET     @Key2 = 2
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 10
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 200
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 3000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_0'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 1
DECLARE @Key2  -- Int32
SET     @Key2 = 3
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 20
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_1'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 1
DECLARE @Key2  -- Int32
SET     @Key2 = 4
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 30
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_2'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 2
DECLARE @Key2  -- Int32
SET     @Key2 = 3
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 40
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_3'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 2
DECLARE @Key2  -- Int32
SET     @Key2 = 4
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 50
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_4'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Key1  -- Int32
SET     @Key1 = 3
DECLARE @Key2  -- Int32
SET     @Key2 = 4
DECLARE @DataKey11  -- Int32
SET     @DataKey11 = 60
DECLARE @DataKey21  -- Int32
SET     @DataKey21 = 300
DECLARE @DataKey22  -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31  -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32  -- Int32
SET     @DataKey32 = 4000
DECLARE @DataKey33  -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(5) -- String
SET     @ValueStr = 'Str_5'

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
(
	@Key1,
	@Key2,
	@DataKey11,
	@DataKey21,
	@DataKey22,
	@DataKey31,
	@DataKey32,
	@DataKey33,
	@ValueStr
)

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
		LEFT JOIN [FirstOptimizerData] [f2] ON [f2].[ValueStr] LIKE 'Str%' ESCAPE '~' AND [f2].[DataKey11] = 10

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

