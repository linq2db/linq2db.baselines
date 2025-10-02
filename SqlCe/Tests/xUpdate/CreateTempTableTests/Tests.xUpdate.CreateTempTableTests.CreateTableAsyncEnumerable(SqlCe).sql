BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7

BeforeExecute
-- SqlCe

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [TempTable]

