﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

CREATE TABLE [#TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

INSERT INTO [#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [#TempTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE [TempTable]

