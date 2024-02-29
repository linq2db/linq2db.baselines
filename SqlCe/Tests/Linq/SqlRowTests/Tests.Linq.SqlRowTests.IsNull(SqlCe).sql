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
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] IS NULL AND [i].[Two] IS NULL AND [i].[Three] IS NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[One] IS NULL AND [i].[Nil] IS NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] IS NULL

BeforeExecute
-- SqlCe

DROP TABLE [Ints]

