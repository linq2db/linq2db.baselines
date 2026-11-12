-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] MOD 2 DESC

