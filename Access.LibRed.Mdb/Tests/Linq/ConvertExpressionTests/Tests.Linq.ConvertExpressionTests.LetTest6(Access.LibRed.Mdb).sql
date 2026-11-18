-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[ParentID],
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100
	) as [Any_1],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [t].[ParentID] AND [c_3].[ChildID] > -100
	) as [Count_1],
	(
		SELECT TOP 1
			[c_4].[ParentID]
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ParentID] = [t].[ParentID] AND [c_4].[ChildID] > -100 AND
			[c_4].[ParentID] > 0
		ORDER BY
			[c_4].[ChildID]
	) as [ParentID_1],
	[t1].[ParentID] as [ParentID_2],
	[t1].[ChildID]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT TOP 1
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100
			ORDER BY
				[c_1].[ChildID]
		) [t1]
WHERE
	[t].[ParentID] > 0

