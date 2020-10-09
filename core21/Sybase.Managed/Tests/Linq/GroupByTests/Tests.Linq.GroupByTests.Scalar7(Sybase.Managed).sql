BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

