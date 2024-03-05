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
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	[i].[One] IS NOT NULL AND [i].[Two] IS NOT NULL AND
	[i].[Three] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	1 = 0

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	1 = 0

BeforeExecute
-- SqlCe

DROP TABLE [Ints]

