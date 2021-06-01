BeforeExecute
-- SqlCe
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5000

SELECT
	[key_data_result].[ParentID],
	[_c].[ParentID],
	[_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP (@p_1)
					[t].[ParentID]
				FROM
					[Parent] [t]
				WHERE
					[t].[ParentID] > 0
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 5000
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

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
	[t2].[Count_1],
	[t1].[First1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[c_2].[ParentID] as [First1]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100 AND
				[c_2].[ParentID] > 0
		) [t1]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[c_3].[ParentID]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ChildID] > -100
			GROUP BY
				[c_3].[ParentID]
		) [t2] ON [t2].[ParentID] = [t].[ParentID]
WHERE
	[t].[ParentID] > 0

