BeforeExecute
-- SqlCe

SELECT
	SUM(Coalesce([a_Parent].[Value1], 0)) as [Sum_1]
FROM
	[Child] [grp]
		LEFT JOIN [Parent] [a_Parent] ON [grp].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[grp].[ParentID]

