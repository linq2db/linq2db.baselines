-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

INSERT ASYNC BULK [TempTable](ID)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

