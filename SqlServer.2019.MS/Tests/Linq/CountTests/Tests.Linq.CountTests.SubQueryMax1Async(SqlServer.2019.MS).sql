BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	Max([t2].[Count_1])
FROM
	[Parent] [t3]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [t1]
					LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
			WHERE
				[a_Parent].[ParentID] = [t3].[ParentID]
		) [t2]

