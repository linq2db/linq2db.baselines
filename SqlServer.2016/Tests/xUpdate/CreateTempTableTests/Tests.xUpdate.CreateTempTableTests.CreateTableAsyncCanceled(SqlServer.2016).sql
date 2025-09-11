BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2016

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2016 (asynchronously)

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2016

DROP TABLE [TempTable]

