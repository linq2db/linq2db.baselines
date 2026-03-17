-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[t2].[Key_1],
	[t2].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[Key_1],
				[t1].[Count_1]
			FROM
				(
					SELECT
						COUNT(*) as [Count_1],
						[a_Children].[ParentID] as [Key_1]
					FROM
						[Child] [a_Children]
					WHERE
						[p].[ParentID] = [a_Children].[ParentID]
					GROUP BY
						[a_Children].[ParentID]
				) [t1]
			ORDER BY
				[t1].[Count_1],
				[t1].[Key_1]
		) [t2]

