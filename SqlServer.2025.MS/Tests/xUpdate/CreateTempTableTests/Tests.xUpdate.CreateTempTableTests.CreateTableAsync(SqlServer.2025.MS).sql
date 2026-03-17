-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2025.MS SqlServer.2025

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2025.MS SqlServer.2025

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [TempTable]

