BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

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
(1,2,3,4,5,NULL)

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] * 2 OR [i].[Two] = [i].[One] * 2 AND [i].[Three] >= [i].[Four] - 1)

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Four] >= [i].[Three]

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[Five] OR [i].[Two] = [i].[Five] AND [i].[Four] >= [i].[Three])

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Nil] > [i].[Two] OR [i].[Nil] = [i].[Two] AND [i].[Four] >= [i].[Three])

BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	(2 > [i].[One] OR 2 = [i].[One] AND NULL > [i].[Two])

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Ints]

