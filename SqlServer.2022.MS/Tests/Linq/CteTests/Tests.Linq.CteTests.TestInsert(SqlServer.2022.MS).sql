﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [CteChild]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[CteChild]', N'U') IS NULL)
	CREATE TABLE [CteChild]
	(
		[ChildID]  Int NOT NULL,
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

WITH [CTE1_] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ParentID] > 1
),
[LAST0] ([ParentID], [ChildID])
AS
(
	SELECT
		[c4].[ParentID],
		[c4].[ChildID]
	FROM
		[Child] [c4]
	WHERE
		[c4].[ParentID] % 2 = 0
)
INSERT INTO [CteChild]
(
	[ChildID],
	[ParentID]
)
SELECT
	[c4_1].[ChildID],
	[c4_1].[ParentID]
FROM
	[CTE1_] [p]
		INNER JOIN [LAST0] [c4_1] ON [c4_1].[ParentID] = [p].[ParentID]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ChildID],
	[t1].[ParentID]
FROM
	[CteChild] [t1]
ORDER BY
	[t1].[ChildID],
	[t1].[ParentID]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[c4].[ChildID],
	[c4].[ParentID]
FROM
	[Child] [p]
		INNER JOIN [Child] [c4] ON [c4].[ParentID] = [p].[ParentID]
WHERE
	[p].[ParentID] > 1 AND [c4].[ParentID] % 2 = 0
ORDER BY
	[c4].[ChildID],
	[c4].[ParentID]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [CteChild]

