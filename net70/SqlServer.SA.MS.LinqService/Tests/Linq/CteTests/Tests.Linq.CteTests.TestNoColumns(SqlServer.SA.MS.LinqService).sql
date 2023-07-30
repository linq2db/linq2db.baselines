﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

WITH [CTE1_] ([ParentID], [ChildID])
AS
(
	SELECT
		[t1].[ParentID],
		[t1].[ChildID]
	FROM
		[Child] [t1]
)
SELECT
	Count(*)
FROM
	[CTE1_] [t2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

WITH [CTE1_] ([ChildID])
AS
(
	SELECT
		[c_1].[ChildID]
	FROM
		[Child] [c_1]
)
SELECT
	Count(*)
FROM
	[CTE1_] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

WITH [CTE1_] ([ChildID])
AS
(
	SELECT
		[c_1].[ChildID]
	FROM
		[Child] [c_1]
)
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[CTE1_] [t1]
	), 1, 0)

