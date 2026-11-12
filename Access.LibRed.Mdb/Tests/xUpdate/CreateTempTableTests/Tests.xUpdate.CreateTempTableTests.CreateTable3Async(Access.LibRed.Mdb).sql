-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

