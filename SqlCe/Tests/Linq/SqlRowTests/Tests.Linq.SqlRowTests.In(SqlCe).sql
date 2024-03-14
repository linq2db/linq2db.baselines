﻿BeforeExecute
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
	Count(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	[i].[One] = 1 AND [i].[Two] = [i].[One] * 2

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	([i].[One] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Three] = [i].[Four] - 1 OR [i].[One] = 0 AND [i].[Two] = 7 AND [i].[Three] = 9 OR [i].[One] >= NULL AND [i].[Two] = -1 AND [i].[Three] = [i].[Four])

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	([i].[One] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR [i].[One] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR [i].[One] >= NULL AND [i].[Two] = 2 AND [i].[Four] = [i].[Four])

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	([i].[Nil] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR [i].[Nil] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR [i].[Nil] >= NULL AND [i].[Two] = 2 AND [i].[Four] = [i].[Four])

BeforeExecute
-- SqlCe

DROP TABLE [Ints]

