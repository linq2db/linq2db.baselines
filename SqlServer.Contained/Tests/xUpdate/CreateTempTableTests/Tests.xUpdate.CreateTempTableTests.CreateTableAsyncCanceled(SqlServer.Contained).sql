-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.Contained SqlServer.2019

DROP TABLE [TempTable]

