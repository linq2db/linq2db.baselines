BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

CREATE TABLE [#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

INSERT INTO [#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NOT NULL)
	DROP TABLE [#TempTable]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DROP TABLE [TempTable]

