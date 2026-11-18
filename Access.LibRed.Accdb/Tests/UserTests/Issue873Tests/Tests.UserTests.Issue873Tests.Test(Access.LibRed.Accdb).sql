-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	' ' + CStr(CASE
		WHEN [f].[Value1] IS NULL THEN 0
		ELSE [f].[Value1]
	END),
	CASE
		WHEN [t1].[SubSum] IS NULL THEN 0
		ELSE [t1].[SubSum]
	END,
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_2]
				LEFT JOIN [Parent] [a_Parent_1] ON ([c_2].[ParentID] = [a_Parent_1].[ParentID])
		WHERE
			[a_Parent_1].[ParentID] = [f].[ParentID] AND ([a_Parent_1].[Value1] = [f].[Value1] OR [a_Parent_1].[Value1] IS NULL AND [f].[Value1] IS NULL)
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [p]
				LEFT JOIN [Parent] [a_Parent_2] ON ([p].[ParentID] = [a_Parent_2].[ParentID])
		WHERE
			[a_Parent_2].[ParentID] = [f].[ParentID] AND ([a_Parent_2].[Value1] = [f].[Value1] OR [a_Parent_2].[Value1] IS NULL AND [f].[Value1] IS NULL)
	)
FROM
	[Parent] [f]
		OUTER APPLY (
			SELECT
				SUM([c_1].[ChildID]) as [SubSum]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
			WHERE
				[a_Parent].[ParentID] = [f].[ParentID] AND ([a_Parent].[Value1] = [f].[Value1] OR [a_Parent].[Value1] IS NULL AND [f].[Value1] IS NULL)
		) [t1]
WHERE
	(' ' + CStr(CASE
		WHEN [f].[Value1] IS NULL THEN 0
		ELSE [f].[Value1]
	END)) LIKE '%1%' AND
	[t1].[SubSum] IS NOT NULL AND [t1].[SubSum] > 0

