BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[FirstOptimizerData]', N'U') IS NOT NULL)
	DROP TABLE [FirstOptimizerData]

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

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
(1,2,10,100,200,1000,2000,3000,N'Str_0'),
(1,3,20,100,300,1000,2000,4000,N'Str_1'),
(1,4,30,100,400,1000,2000,5000,N'Str_2'),
(2,3,40,200,300,1000,3000,4000,N'Str_3'),
(2,4,50,200,400,1000,3000,5000,N'Str_4'),
(3,4,60,300,400,1000,4000,5000,N'Str_5')

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SecondOptimizerData]', N'U') IS NOT NULL)
	DROP TABLE [SecondOptimizerData]

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

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
(1,2,10,100,200,1000,2000,3000,N'Str_0'),
(1,3,20,100,300,1000,2000,4000,N'Str_1'),
(1,4,30,100,400,1000,2000,5000,N'Str_2'),
(2,3,40,200,300,1000,3000,4000,N'Str_3'),
(2,4,50,200,400,1000,3000,5000,N'Str_4'),
(3,4,60,300,400,1000,4000,5000,N'Str_5')

BeforeExecute
-- SqlServer.2008

SELECT
	COUNT([x_1].[Key2]),
	COUNT([x_1].[Key1])
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
	) [x_1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SecondOptimizerData]', N'U') IS NOT NULL)
	DROP TABLE [SecondOptimizerData]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[FirstOptimizerData]', N'U') IS NOT NULL)
	DROP TABLE [FirstOptimizerData]

