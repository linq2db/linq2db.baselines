-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

INSERT ASYNC BULK [TempTable](ID)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

