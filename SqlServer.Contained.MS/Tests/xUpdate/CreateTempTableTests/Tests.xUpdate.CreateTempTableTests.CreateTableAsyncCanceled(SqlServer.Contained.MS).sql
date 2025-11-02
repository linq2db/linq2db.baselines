-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE [TempTable]

