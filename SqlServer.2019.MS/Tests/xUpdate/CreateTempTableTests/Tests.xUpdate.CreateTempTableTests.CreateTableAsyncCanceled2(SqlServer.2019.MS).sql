-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE [TempTable]

