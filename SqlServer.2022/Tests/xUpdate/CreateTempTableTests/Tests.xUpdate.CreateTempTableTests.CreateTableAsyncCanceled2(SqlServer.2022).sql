BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2022 (asynchronously)

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2022 (asynchronously)

INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

BeforeExecute
-- SqlServer.2022

DROP TABLE [TempTable]

