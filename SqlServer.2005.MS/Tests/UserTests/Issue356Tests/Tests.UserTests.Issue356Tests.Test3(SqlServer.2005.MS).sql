-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[t4].[ParentID],
	[t3].[ChildID]
FROM
	[Parent] [t4]
		INNER JOIN (
			SELECT
				[t2].[ParentID],
				[t2].[ChildID]
			FROM
				(
					SELECT
						[c_2].[ParentID],
						[c_2].[ChildID],
						ROW_NUMBER() OVER (ORDER BY [c_2].[ParentID]) as [RN]
					FROM
						(
							SELECT
								[c_1].[ParentID],
								[c_1].[ChildID]
							FROM
								[Child] [c_1]
							UNION
							SELECT
								[t1].[ParentID],
								[t1].[ChildID]
							FROM
								[Child] [t1]
						) [c_2]
				) [t2]
			WHERE
				[t2].[RN] > 10 AND [t2].[RN] <= 20
		) [t3] ON [t3].[ParentID] = [t4].[ParentID]
ORDER BY
	[t4].[ParentID]

