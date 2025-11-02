-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

-- SqlServer.Contained SqlServer.2019

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

