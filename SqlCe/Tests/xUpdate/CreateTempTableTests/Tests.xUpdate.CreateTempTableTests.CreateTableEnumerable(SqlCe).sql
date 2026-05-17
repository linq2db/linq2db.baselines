-- SqlCe

DROP TABLE [TempTable]

-- SqlCe

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlCe

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

-- SqlCe

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

-- SqlCe

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlCe

DROP TABLE [TempTable]

