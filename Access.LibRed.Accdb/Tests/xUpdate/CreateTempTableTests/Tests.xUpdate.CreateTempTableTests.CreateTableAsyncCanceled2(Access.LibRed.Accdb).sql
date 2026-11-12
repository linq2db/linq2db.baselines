-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

