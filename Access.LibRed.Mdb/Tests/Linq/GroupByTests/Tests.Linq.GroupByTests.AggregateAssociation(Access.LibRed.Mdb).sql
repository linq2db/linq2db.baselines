-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	SUM(CASE
		WHEN [a_Parent].[Value1] IS NULL THEN 0
		ELSE [a_Parent].[Value1]
	END)
FROM
	[Child] [grp]
		LEFT JOIN [Parent] [a_Parent] ON ([grp].[ParentID] = [a_Parent].[ParentID])
GROUP BY
	[grp].[ParentID]

