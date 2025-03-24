﻿BeforeExecute
--  SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
--  SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[t1].[ParentID] + 1000 as [c1],
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
--  SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
--  SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

