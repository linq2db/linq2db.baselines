BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Id]  Int NOT NULL,
	[Int] Int     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Src]
(
	[Id],
	[Int]
)
SELECT 1,NULL UNION ALL
SELECT 2,2

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (NULL, NULL)

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, NULL)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

