BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[_c].[ParentID],
	[_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100 AND [_c].[ParentID] > 0
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[_c].[ParentID],
	[_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[t1].[ParentID],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END,
	[t2].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (@take)
				[c_2].[ParentID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100 AND
				[c_2].[ParentID] > 0
			ORDER BY
				[c_2].[ChildID]
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
		) [t2] ON [t2].[ParentID] = [p].[ParentID]

