﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE [TempTable]

