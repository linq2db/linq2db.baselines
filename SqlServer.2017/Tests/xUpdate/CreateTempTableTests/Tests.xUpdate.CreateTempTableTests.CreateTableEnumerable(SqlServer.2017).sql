BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2017

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
INSERT BULK [TempTable](ID)

BeforeExecute
-- SqlServer.2017

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

