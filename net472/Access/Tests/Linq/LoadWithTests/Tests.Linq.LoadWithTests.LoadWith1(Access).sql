﻿BeforeExecute
-- Access AccessOleDb

SELECT TOP 1 
	[t].[ParentID], 
	[t].[ChildID], 
	[a_Parent].[ParentID], 
	[a_Parent].[Value1]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [a_Parent] ON ([t].[ParentID] = [a_Parent].[ParentID])

