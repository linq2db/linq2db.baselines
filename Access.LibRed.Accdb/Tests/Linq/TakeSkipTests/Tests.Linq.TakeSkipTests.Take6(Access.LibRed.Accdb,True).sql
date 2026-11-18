-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 3

SELECT TOP @take
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]

