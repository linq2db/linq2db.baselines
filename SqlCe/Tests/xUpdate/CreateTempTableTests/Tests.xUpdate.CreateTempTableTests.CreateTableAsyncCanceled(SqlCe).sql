﻿BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID] as [ID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

