-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE [TempTable]

