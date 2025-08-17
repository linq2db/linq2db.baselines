BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

