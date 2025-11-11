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

DROP TABLE [TempTable]

