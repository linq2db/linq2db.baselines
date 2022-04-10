BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Ints]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND
	[i].[Three] = [i].[Four] - 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] = [i].[One] AND [i].[Two] = [i].[Two] AND
	[i].[Four] = [i].[Three]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] = [i].[One] AND [i].[Nil] = [i].[Two] AND
	[i].[Three] = [i].[Three]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	1 = [i].[One] AND [i].[Nil] = [i].[Nil] AND 3 = [i].[Three]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	1 = [i].[One] AND NULL >= [i].[Nil] AND 3 = [i].[Three]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Ints]

