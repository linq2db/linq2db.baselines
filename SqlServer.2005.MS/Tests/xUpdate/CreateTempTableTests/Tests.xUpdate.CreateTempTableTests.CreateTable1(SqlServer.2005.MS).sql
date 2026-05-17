-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

