BeforeExecute
-- SqlCe

DROP TABLE [AsyncDataTable]

BeforeExecute
-- SqlCe

CREATE TABLE [AsyncDataTable]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [AsyncDataTable]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7 UNION ALL
SELECT 8 UNION ALL
SELECT 9 UNION ALL
SELECT 10

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	MAX([c_1].[Id]) as [MAX_1]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @p

BeforeExecute
-- SqlCe

DROP TABLE [AsyncDataTable]

