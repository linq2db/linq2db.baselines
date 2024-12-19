BeforeExecute
-- SqlCe

DROP TABLE [Data]

BeforeExecute
-- SqlCe

CREATE TABLE [Data]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Data]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3

BeforeExecute
-- SqlCe

DROP TABLE [SubData1]

BeforeExecute
-- SqlCe

CREATE TABLE [SubData1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [SubData1]
(
	[Id]
)
SELECT 2 UNION ALL
SELECT 3

BeforeExecute
-- SqlCe

DROP TABLE [SubData2]

BeforeExecute
-- SqlCe

CREATE TABLE [SubData2]
(
	[Id]     Int           NOT NULL,
	[Reason] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [SubData2]
(
	[Id],
	[Reason]
)
SELECT 3,'прст1' UNION ALL
SELECT 3,'прст2'

BeforeExecute
-- SqlCe

SELECT
	[i].[Id],
	[t1].[Reason]
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON [i].[Id] = [a_SubData].[Id]
		OUTER APPLY (
			SELECT TOP (1)
				[a_SubDatas].[Reason]
			FROM
				[SubData2] [a_SubDatas]
			WHERE
				[a_SubData].[Id] = [a_SubDatas].[Id]
		) [t1]
ORDER BY
	[i].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [SubData2]

BeforeExecute
-- SqlCe

DROP TABLE [SubData1]

BeforeExecute
-- SqlCe

DROP TABLE [Data]

