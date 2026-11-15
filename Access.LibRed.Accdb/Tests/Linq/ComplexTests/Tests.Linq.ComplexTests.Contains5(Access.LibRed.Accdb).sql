-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IN (
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		OFFSET 1 ROWS FETCH NEXT 100 ROWS ONLY 
	)

