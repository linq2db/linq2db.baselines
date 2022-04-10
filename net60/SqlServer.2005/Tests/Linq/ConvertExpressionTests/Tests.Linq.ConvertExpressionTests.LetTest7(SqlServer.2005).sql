BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 5000
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1

SELECT TOP (@take)
	[t].[ParentID],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100
	),
	[t1].[First1],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[c_3].[ParentID] as [First1]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ParentID] = [t].[ParentID] AND [c_3].[ChildID] > -100 AND
				[c_3].[ParentID] > 0
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_2)
				[c_4].[ParentID],
				[c_4].[ChildID]
			FROM
				[Child] [c_4]
			WHERE
				[c_4].[ParentID] = [t].[ParentID] AND [c_4].[ChildID] > -100
		) [t2]
WHERE
	[t].[ParentID] > 0

