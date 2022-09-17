BeforeExecute
-- SqlCe

DROP TABLE [Ints]

BeforeExecute
-- SqlCe

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
-- SqlCe

INSERT INTO [Ints]
(
	[One],
	[Two],
	[Three],
	[Four],
	[Five],
	[Nil]
)
SELECT 1,2,3,4,5,NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[One] * 2 OR [i].[One] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Three] > [i].[Four] - 1)

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[Two] OR [i].[One] = [i].[One] AND [i].[Two] = [i].[Two] AND [i].[Four] > [i].[Three])

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[Five] OR [i].[One] = [i].[One] AND [i].[Two] = [i].[Five] AND [i].[Four] > [i].[Three])

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Nil] > [i].[Two] OR [i].[One] = [i].[One] AND [i].[Nil] = [i].[Two] AND [i].[Four] > [i].[Three])

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(2 > [i].[One] OR 2 = [i].[One] AND NULL > [i].[Two] OR 2 = [i].[One] AND [i].[Two] IS NULL AND 3 > [i].[Three])

BeforeExecute
-- SqlCe

DROP TABLE [Ints]

