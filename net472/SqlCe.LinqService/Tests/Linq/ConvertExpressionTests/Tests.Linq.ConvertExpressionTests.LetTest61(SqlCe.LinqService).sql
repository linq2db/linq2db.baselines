BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[detail].[ParentID]
FROM
	(
		SELECT DISTINCT
			[cp].[ParentID]
		FROM
			[Parent] [cp]
		WHERE
			[cp].[ParentID] > 0
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
			[cp].[ParentID]
		FROM
			[Parent] [cp]
		WHERE
			[cp].[ParentID] > 0
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] = [key_data_result].[ParentID] AND [_c].[ChildID] > -100
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- SqlCe

SELECT
	[cp].[ParentID],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [cp].[ParentID] AND [c_1].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END,
	[t1].[Count_1]
FROM
	[Parent] [cp]
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
		) [t1] ON [t1].[ParentID] = [cp].[ParentID]
WHERE
	[cp].[ParentID] > 0

