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
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[One] * 2 OR [i].[One] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Three] >= [i].[Four] - 1)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[Two] OR [i].[One] = [i].[One] AND [i].[Two] = [i].[Two] AND [i].[Four] >= [i].[Three])

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[Five] OR [i].[One] = [i].[One] AND [i].[Two] = [i].[Five] AND [i].[Four] >= [i].[Three])

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Nil] > [i].[Two] OR [i].[One] = [i].[One] AND [i].[Nil] = [i].[Two] AND [i].[Four] >= [i].[Three])

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(2 > [i].[One] OR 2 = [i].[One] AND NULL > [i].[Two] OR 2 = [i].[One] AND [i].[Two] IS NULL AND 3 >= [i].[Three])

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Ints]

