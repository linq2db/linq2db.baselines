-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE [TempTable]

