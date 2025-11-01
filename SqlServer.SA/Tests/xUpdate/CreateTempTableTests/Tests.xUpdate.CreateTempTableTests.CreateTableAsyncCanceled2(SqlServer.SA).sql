-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.SA SqlServer.2019

INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.SA SqlServer.2019

DROP TABLE [TempTable]

