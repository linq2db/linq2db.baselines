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
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Three] = [i].[Four] - 1

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Four] = [i].[Three]

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Nil] = [i].[Two]

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	1 = [i].[One] AND [i].[Nil] = [i].[Nil] AND 3 = [i].[Three]

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	1 = [i].[One] AND NULL >= [i].[Nil] AND 3 = [i].[Three]

BeforeExecute
-- SqlCe

DROP TABLE [Ints]

