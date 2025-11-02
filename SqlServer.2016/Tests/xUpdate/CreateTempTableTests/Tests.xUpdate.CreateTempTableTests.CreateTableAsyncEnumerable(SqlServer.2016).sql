-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2016

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2016

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

INSERT ASYNC BULK [TempTable](ID)

-- SqlServer.2016

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

