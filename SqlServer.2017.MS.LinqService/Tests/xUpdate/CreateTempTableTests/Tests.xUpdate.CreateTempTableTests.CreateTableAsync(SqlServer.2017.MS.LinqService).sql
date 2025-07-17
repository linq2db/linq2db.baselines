BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

