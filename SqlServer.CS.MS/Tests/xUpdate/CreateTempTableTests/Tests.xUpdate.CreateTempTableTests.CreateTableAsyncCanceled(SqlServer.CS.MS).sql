-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [TempTable]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE [TempTable]

