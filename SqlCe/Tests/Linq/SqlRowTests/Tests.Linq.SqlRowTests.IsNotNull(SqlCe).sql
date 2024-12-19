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

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	1 = 0

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	1 = 0

BeforeExecute
-- SqlCe

DROP TABLE [Ints]

