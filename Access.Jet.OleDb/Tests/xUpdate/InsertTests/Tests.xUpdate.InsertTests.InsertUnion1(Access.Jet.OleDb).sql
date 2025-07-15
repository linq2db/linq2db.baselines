﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
			Int([c_1].[ChildID] / 10) as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			IIF([c_2].[ParentID] IS NULL, 0, [c_2].[ParentID]) as [ParentID],
			Int(IIF([c_2].[GrandChildID] IS NULL, 0, [c_2].[GrandChildID]) / 100) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

