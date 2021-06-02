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

	CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
SELECT 8,8,'8' UNION ALL
SELECT 3,3,'3' UNION ALL
SELECT 2,2,'2' UNION ALL
SELECT 6,3,'3' UNION ALL
SELECT 1,3,'3' UNION ALL
SELECT 5,5,'5' UNION ALL
SELECT 7,2,'2' UNION ALL
SELECT 4,4,'4'

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[_1].[F2]
FROM
	(
		SELECT DISTINCT
			[_].[F1],
			[_].[F2]
		FROM
			[DistinctOrderByTable] [_]
	) [_1]
ORDER BY
	[_1].[F1] DESC

BeforeExecute
-- SqlCe

DROP TABLE [DistinctOrderByTable]

