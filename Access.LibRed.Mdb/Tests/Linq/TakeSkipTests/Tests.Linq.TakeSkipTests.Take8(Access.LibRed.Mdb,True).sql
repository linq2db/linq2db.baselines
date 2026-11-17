-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @n  -- Int32
SET     @n = 3

SELECT TOP @n
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

