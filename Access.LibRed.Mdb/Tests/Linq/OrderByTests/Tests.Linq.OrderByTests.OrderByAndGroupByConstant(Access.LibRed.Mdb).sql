-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 1

SELECT TOP @take
	COUNT(*),
	1 + MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

