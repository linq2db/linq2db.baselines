BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005
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
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] < [i].[One] * 2) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[One] + [i].[One]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] < [i].[One]) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] > [i].[Four]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] < [i].[Three]) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[Two]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] > [i].[Two]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[One]) OR ([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Five] > [i].[Two]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] > [i].[One]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] < [i].[One]) OR ([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] > [i].[Three]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[Nil]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] > [i].[Nil]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] < [i].[Nil]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] > [i].[Nil]))

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[Nil] OR [i].[Two] = [i].[Nil] AND [i].[Two] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Two] > [i].[Five]))

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Ints]', N'U') IS NOT NULL)
	DROP TABLE [Ints]

