BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Id]    Int          NOT NULL,
	[Int]   Int              NULL,
	[Enum]  NVarChar(5)      NULL,
	[CEnum] NVarChar(20)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
SELECT 1,NULL,NULL,NULL UNION ALL
SELECT 2,2,'TWO','___Value2___'

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (NULL, NULL)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, NULL)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

