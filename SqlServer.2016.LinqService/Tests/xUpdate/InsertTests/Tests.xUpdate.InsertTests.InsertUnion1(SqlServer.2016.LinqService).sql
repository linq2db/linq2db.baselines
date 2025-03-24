﻿BeforeExecute
--  SqlServer.2016

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

BeforeExecute
--  SqlServer.2016

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
			CAST(Floor(CAST([c_1].[ChildID] AS Float) / 10) AS Int) as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			Coalesce([c_2].[ParentID], 0) as [ParentID],
			Floor(CAST(Coalesce([c_2].[GrandChildID], 0) AS Float) / 100) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

BeforeExecute
--  SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
--  SqlServer.2016

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

