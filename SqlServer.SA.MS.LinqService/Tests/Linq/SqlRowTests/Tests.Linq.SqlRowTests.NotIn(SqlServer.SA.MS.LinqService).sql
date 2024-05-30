BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Ints]', N'U') IS NULL)
	CREATE TABLE [Ints]
	(
		[One]   Int NOT NULL,
		[Two]   Int NOT NULL,
		[Three] Int NOT NULL,
		[Four]  Int NOT NULL,
		[Five]  Int NOT NULL,
		[Nil]   Int     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @One Int -- Int32
SET     @One = 1
DECLARE @Two Int -- Int32
SET     @Two = 2
DECLARE @Three Int -- Int32
SET     @Three = 3
DECLARE @Four Int -- Int32
SET     @Four = 4
DECLARE @Five Int -- Int32
SET     @Five = 5
DECLARE @Nil Int -- Int32
SET     @Nil = NULL

INSERT INTO [Ints]
(
	[One],
	[Two],
	[Three],
	[Four],
	[Five],
	[Nil]
)
VALUES
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] <> 1 OR [i].[Two] <> [i].[One] * 2)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Two] <> 7 OR [i].[Three] <> 9) AND
	([i].[One] >= NULL OR [i].[Two] <> -1 OR [i].[Three] <> [i].[Four])

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Three] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Three] <> 7 OR [i].[Four] <> 9) AND
	([i].[One] >= NULL OR [i].[Three] <> 2)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[One] <> 0 OR [i].[Two] <> 7 OR [i].[Four] <> 9) AND
	([i].[One] >= NULL OR [i].[Two] <> 2)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Nil] <> [i].[One] OR [i].[Two] <> [i].[One] * 2 OR [i].[Four] <> [i].[Four] - 1) AND
	([i].[Nil] <> 0 OR [i].[Two] <> 7 OR [i].[Four] <> 9) AND
	([i].[Nil] >= NULL OR [i].[Two] <> 2)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Ints]

