BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

