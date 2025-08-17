BeforeExecute
-- SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2022 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022 (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

