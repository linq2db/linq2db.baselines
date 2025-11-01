-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2016

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2016

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.2016

DROP TABLE [TempTable]

