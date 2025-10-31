BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	MAX([t1].[Count_1])
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
			WHERE
				[a_Parent].[ParentID] = [t2].[ParentID]
		) [t1]

