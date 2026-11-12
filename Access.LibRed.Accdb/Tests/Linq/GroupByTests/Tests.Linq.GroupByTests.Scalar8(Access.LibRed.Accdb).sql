-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

