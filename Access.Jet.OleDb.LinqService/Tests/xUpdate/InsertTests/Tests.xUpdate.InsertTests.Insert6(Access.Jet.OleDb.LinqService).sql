﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[c_1].[ParentID] + 1000,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

