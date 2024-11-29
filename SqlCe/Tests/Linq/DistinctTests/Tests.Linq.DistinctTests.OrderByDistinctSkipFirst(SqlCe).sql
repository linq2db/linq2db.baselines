BeforeExecute
-- SqlCe

DROP TABLE [DistinctOrderByTable]

BeforeExecute
-- SqlCe

CREATE TABLE [DistinctOrderByTable]
(
	[Id] Int           NOT NULL,
	[F1] Int           NOT NULL,
	[F2] NVarChar(255)     NULL,
	[F3] Int           NOT NULL,

	CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
SELECT 8,8,'8',5 UNION ALL
SELECT 3,3,'3',3 UNION ALL
SELECT 2,2,'2',1 UNION ALL
SELECT 6,3,'3',4 UNION ALL
SELECT 1,3,'3',7 UNION ALL
SELECT 5,5,'5',2 UNION ALL
SELECT 7,2,'2',8 UNION ALL
SELECT 4,4,'4',6

BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t3].[F2]
FROM
	(
		SELECT DISTINCT
			[t2].[F1],
			[t2].[F2]
		FROM
			(
				SELECT
					[t1].[F1],
					[t1].[F2]
				FROM
					[DistinctOrderByTable] [t1]
				ORDER BY
					[t1].[F3] DESC
				OFFSET @skip ROWS
			) [t2]
	) [t3]

BeforeExecute
-- SqlCe

DROP TABLE [DistinctOrderByTable]

