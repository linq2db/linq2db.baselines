-- SqlServer.2014

SELECT
	[p].[ParentID],
	IIF([c_2].[Count_1] IS NULL, 0, [c_2].[Count_1])
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [c_2]

-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

