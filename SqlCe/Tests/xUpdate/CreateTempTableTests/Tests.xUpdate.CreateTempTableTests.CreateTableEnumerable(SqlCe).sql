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
-- SqlCe

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [TempTable]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7

BeforeExecute
-- SqlCe

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlCe

DROP TABLE [TempTable]

