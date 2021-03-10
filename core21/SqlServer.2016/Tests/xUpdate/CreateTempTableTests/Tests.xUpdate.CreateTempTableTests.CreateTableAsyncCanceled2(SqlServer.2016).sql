BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2016 (asynchronously)

CREATE TABLE [#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016 (asynchronously)

INSERT INTO [#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2016 (asynchronously)

DROP TABLE [#TempTable]

BeforeExecute
-- SqlServer.2016

DROP TABLE [TempTable]

