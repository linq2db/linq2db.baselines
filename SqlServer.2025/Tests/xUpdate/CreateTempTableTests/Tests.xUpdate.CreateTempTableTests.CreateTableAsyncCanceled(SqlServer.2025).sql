BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE [TempTable]

