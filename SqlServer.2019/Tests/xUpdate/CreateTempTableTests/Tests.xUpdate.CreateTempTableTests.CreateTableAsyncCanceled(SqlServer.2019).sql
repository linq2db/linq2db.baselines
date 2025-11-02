-- SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2019

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.2019

DROP TABLE [TempTable]

