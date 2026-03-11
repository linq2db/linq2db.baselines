-- SqlCe

DROP TABLE [TempTable]

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
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlCe

DROP TABLE [TempTable]

-- SqlCe

DROP TABLE [TempTable]

