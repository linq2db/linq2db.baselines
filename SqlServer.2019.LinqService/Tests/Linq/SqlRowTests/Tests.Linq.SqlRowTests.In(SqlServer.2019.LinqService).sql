BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019
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
-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] = 1 AND [i].[Two] = [i].[One] * 2

BeforeExecute
-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] = [i].[One] * 2 AND [i].[Three] = [i].[Four] - 1 OR [i].[One] = 0 AND [i].[Two] = 7 AND [i].[Three] = 9 OR [i].[One] >= NULL AND [i].[Two] = -1 AND [i].[Three] = [i].[Four])

BeforeExecute
-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR [i].[One] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR [i].[One] >= NULL AND [i].[Two] = 2)

BeforeExecute
-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Nil] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR [i].[Nil] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR [i].[Nil] >= NULL AND [i].[Two] = 2)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Ints]

