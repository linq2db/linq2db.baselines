﻿BeforeExecute
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
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016

DROP TABLE [TempTable]

