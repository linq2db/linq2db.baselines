﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

UPDATE
	[Parent] [a_Parent],
	[Child] [child_1]
SET
	[a_Parent].[Value1] = 5
WHERE
	[child_1].[ChildID] = 10000 AND
	[a_Parent].[ParentID] > 0 AND
	[a_Parent].[ParentID] IS NOT NULL AND
	[child_1].[ParentID] = [a_Parent].[ParentID]

