BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Id]   Int         NOT NULL,
	[Int]  Int             NULL,
	[Enum] NVarChar(5)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
SELECT 1,NULL,NULL UNION ALL
SELECT 2,2,'TWO'

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- SqlCe

DROP TABLE [Src]

