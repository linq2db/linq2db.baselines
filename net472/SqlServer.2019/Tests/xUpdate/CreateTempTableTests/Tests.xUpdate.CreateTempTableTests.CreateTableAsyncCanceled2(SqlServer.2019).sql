BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2019 SqlServer.2017 (asynchronously)

CREATE TABLE [#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017 (asynchronously)

INSERT INTO [#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [#TempTable]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [TempTable]

