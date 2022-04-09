BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Count_1]
FROM
	[Child] [c_1]
		INNER HASH JOIN (
			SELECT
				[t].[ParentID],
				(
					SELECT
						Count(*)
					FROM
						[Child] [t1]
					WHERE
						[t].[ParentID] = [t1].[ParentID]
				) as [Count_1]
			FROM
				[Parent] [t]
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						[Child] [t2]
					WHERE
						[t].[ParentID] = [t2].[ParentID]
				)
		) [p] ON [c_1].[ParentID] = [p].[ParentID]

