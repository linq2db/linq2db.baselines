-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2025 SqlServer.2022

DROP TABLE [TempTable]

