﻿BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2014

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[t1].[ParentID] + 1000,
	[t1].[Value1]
FROM
	(
		SELECT
			[c_1].[ParentID],
			Convert(Int, Floor(Convert(Float, [c_1].[ChildID]) / 10)) as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			Coalesce([c_2].[ParentID], 0) as [ParentID],
			Floor(Convert(Float, Coalesce([c_2].[GrandChildID], 0)) / 100) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	Count(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

