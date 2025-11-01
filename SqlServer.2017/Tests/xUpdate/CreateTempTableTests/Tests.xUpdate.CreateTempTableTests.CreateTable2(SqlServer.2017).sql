-- SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2017

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

-- SqlServer.2017

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2017

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

