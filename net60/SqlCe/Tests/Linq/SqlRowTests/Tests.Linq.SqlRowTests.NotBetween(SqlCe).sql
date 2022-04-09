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
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] < [i].[One] * 2) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[One] + [i].[One]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] < [i].[One]) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Three] > [i].[Four]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[One] < [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] < [i].[Three]) OR ([i].[One] > [i].[One] OR [i].[One] = [i].[One] AND [i].[Two] > [i].[Two]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] > [i].[Two]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[One]) OR ([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Five] > [i].[Two]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] > [i].[One]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] < [i].[One]) OR ([i].[Two] > [i].[Two] OR [i].[Two] = [i].[Two] AND [i].[Nil] > [i].[Three]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] < [i].[Nil]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] > [i].[Nil]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] < [i].[Nil]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] > [i].[Nil]))

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	(([i].[Two] < [i].[Nil] OR [i].[Two] = [i].[Nil] AND [i].[Two] < [i].[One]) OR ([i].[Two] > [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Two] > [i].[Five]))

BeforeExecute
-- SqlCe

DROP TABLE [Ints]

