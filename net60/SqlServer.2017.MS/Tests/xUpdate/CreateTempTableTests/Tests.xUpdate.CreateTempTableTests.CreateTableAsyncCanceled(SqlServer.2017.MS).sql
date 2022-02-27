BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

CREATE TABLE [#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE [TempTable]

