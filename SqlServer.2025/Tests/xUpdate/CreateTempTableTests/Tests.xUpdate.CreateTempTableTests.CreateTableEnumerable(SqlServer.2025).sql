-- SqlServer.2025

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2025

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2025

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

INSERT BULK [TempTable](ID)

-- SqlServer.2025

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2025

DROP TABLE IF EXISTS [TempTable]

