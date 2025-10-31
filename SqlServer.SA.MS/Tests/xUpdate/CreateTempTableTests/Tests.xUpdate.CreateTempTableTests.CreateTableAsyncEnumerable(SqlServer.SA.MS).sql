-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

INSERT ASYNC BULK [TempTable](ID)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

