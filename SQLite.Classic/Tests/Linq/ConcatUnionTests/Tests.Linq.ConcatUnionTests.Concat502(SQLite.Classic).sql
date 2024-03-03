BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p_1].[ParentID],
	[p_1].[ParentID_1],
	[p_1].[Value1]
FROM
	(
		SELECT
			[a_Parent].[ParentID],
			[a_Parent].[ParentID] as [ParentID_1],
			[a_Parent].[Value1]
		FROM
			[Child] [p]
				LEFT JOIN [Parent] [a_Parent] ON [p].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[p].[ParentID] = 1
		UNION ALL
		SELECT
			[a_Parent_1].[ParentID],
			[a_Parent_1].[ParentID] as [ParentID_1],
			[a_Parent_1].[Value1]
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent_1] ON [c_1].[ParentID] = [a_Parent_1].[ParentID]
		WHERE
			[c_1].[ParentID] = 3
	) [p_1]
WHERE
	(CASE
		WHEN [p_1].[ParentID] IS NOT NULL
			THEN [p_1].[Value1]
		ELSE NULL
	END <> 2 OR CASE
		WHEN [p_1].[ParentID] IS NOT NULL
			THEN [p_1].[Value1]
		ELSE NULL
	END IS NULL)

