-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE [TempTable]

