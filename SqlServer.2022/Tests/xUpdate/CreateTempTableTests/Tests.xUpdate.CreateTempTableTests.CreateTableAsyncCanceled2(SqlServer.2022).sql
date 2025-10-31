-- SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.2022

INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.2022

DROP TABLE [TempTable]

