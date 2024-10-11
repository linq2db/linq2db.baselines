BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [FirstOptimizerData]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[FirstOptimizerData]', N'U') IS NULL)
	CREATE TABLE [FirstOptimizerData]
	(
		[Key1]      Int          NOT NULL,
		[Key2]      Int          NOT NULL,
		[DataKey11] Int          NOT NULL,
		[DataKey21] Int          NOT NULL,
		[DataKey22] Int          NOT NULL,
		[DataKey31] Int          NOT NULL,
		[DataKey32] Int          NOT NULL,
		[DataKey33] Int          NOT NULL,
		[ValueStr]  NVarChar(50)     NULL,

		CONSTRAINT [PK_FirstOptimizerData] PRIMARY KEY CLUSTERED ([Key1], [Key2])
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 1
DECLARE @Key2 Int -- Int32
SET     @Key2 = 2
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 10
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 200
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 3000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_0'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 1
DECLARE @Key2 Int -- Int32
SET     @Key2 = 3
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 20
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_1'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 1
DECLARE @Key2 Int -- Int32
SET     @Key2 = 4
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 30
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_2'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 2
DECLARE @Key2 Int -- Int32
SET     @Key2 = 3
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 40
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_3'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 2
DECLARE @Key2 Int -- Int32
SET     @Key2 = 4
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 50
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_4'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 3
DECLARE @Key2 Int -- Int32
SET     @Key2 = 4
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 60
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 300
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 4000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_5'

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
-- SqlServer.2019

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[SecondOptimizerData]', N'U') IS NULL)
	CREATE TABLE [SecondOptimizerData]
	(
		[Key1]      Int          NOT NULL,
		[Key2]      Int          NOT NULL,
		[DataKey11] Int          NOT NULL,
		[DataKey21] Int          NOT NULL,
		[DataKey22] Int          NOT NULL,
		[DataKey31] Int          NOT NULL,
		[DataKey32] Int          NOT NULL,
		[DataKey33] Int          NOT NULL,
		[ValueStr]  NVarChar(50)     NULL,

		CONSTRAINT [PK_SecondOptimizerData] PRIMARY KEY CLUSTERED ([Key1], [Key2])
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 1
DECLARE @Key2 Int -- Int32
SET     @Key2 = 2
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 10
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 200
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 3000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_0'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 1
DECLARE @Key2 Int -- Int32
SET     @Key2 = 3
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 20
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_1'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 1
DECLARE @Key2 Int -- Int32
SET     @Key2 = 4
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 30
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 100
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 2000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_2'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 2
DECLARE @Key2 Int -- Int32
SET     @Key2 = 3
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 40
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 300
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 4000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_3'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 2
DECLARE @Key2 Int -- Int32
SET     @Key2 = 4
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 50
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 200
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 3000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_4'

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
-- SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 3
DECLARE @Key2 Int -- Int32
SET     @Key2 = 4
DECLARE @DataKey11 Int -- Int32
SET     @DataKey11 = 60
DECLARE @DataKey21 Int -- Int32
SET     @DataKey21 = 300
DECLARE @DataKey22 Int -- Int32
SET     @DataKey22 = 400
DECLARE @DataKey31 Int -- Int32
SET     @DataKey31 = 1000
DECLARE @DataKey32 Int -- Int32
SET     @DataKey32 = 4000
DECLARE @DataKey33 Int -- Int32
SET     @DataKey33 = 5000
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'Str_5'

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
-- SqlServer.2019

SELECT
	COUNT([t1].[Key2]),
	COUNT([t1].[Key1])
FROM
	(
		SELECT
			[x].[Key2],
			[x].[Key1]
		FROM
			[FirstOptimizerData] [x]
		GROUP BY
			[x].[Key1],
			[x].[Key2]
	) [t1]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [SecondOptimizerData]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [FirstOptimizerData]

