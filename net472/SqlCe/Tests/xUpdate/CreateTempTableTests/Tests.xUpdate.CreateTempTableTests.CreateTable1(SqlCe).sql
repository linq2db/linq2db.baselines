BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

