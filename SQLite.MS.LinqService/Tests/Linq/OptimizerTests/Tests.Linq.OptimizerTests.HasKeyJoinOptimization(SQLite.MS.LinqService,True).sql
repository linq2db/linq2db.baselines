BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FirstOptimizerData]

