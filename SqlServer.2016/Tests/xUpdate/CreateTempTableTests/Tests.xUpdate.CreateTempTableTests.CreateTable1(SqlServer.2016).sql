-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2016

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2016

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

-- SqlServer.2016

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

