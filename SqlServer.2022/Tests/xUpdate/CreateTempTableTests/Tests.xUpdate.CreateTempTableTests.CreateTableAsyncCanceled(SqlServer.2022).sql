-- SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.2022

DROP TABLE [TempTable]

