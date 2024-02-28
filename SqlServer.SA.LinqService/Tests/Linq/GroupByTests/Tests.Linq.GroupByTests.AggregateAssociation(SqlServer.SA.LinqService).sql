BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Sum(Coalesce([grp_1].[Value1], 0))
FROM
	(
		SELECT
			[grp].[ParentID],
			[a_Parent].[Value1]
		FROM
			[Child] [grp]
				LEFT JOIN [Parent] [a_Parent] ON ([grp].[ParentID] = [a_Parent].[ParentID])
	) [grp_1]
GROUP BY
	[grp_1].[ParentID]

