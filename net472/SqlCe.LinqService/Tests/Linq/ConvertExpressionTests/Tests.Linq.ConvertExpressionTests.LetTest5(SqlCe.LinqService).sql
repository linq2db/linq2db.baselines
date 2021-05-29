BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[detail].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [detail].[ParentID] = [key_data_result].[ParentID] AND [detail].[ChildID] > -100 AND [detail].[ParentID] > 0
ORDER BY
	[detail].[ChildID]

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

SELECT
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
	[t1].[Count_1],
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[c_2].[ParentID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ChildID] > -100
			GROUP BY
				[c_2].[ParentID]
		) [t1] ON [t1].[ParentID] = [p].[ParentID]

