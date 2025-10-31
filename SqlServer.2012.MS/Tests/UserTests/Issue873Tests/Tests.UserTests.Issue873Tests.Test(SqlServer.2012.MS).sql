BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	N' ' + CAST(Coalesce([t2].[Value1], 0) AS NVarChar(11)),
	[t2].[SubSum],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_2]
				LEFT JOIN [Parent] [a_Parent_1] ON [c_2].[ParentID] = [a_Parent_1].[ParentID]
		WHERE
			[a_Parent_1].[ParentID] = [t2].[ParentID] AND ([a_Parent_1].[Value1] = [t2].[Value1] OR [a_Parent_1].[Value1] IS NULL AND [t2].[Value1] IS NULL)
	), 1, 0),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [p]
				LEFT JOIN [Parent] [a_Parent_2] ON [p].[ParentID] = [a_Parent_2].[ParentID]
		WHERE
			[a_Parent_2].[ParentID] = [t2].[ParentID] AND ([a_Parent_2].[Value1] = [t2].[Value1] OR [a_Parent_2].[Value1] IS NULL AND [t2].[Value1] IS NULL)
	)
FROM
	(
		SELECT
			[f].[Value1],
			(
				SELECT
					SUM([t1].[ChildID])
				FROM
					(
						SELECT
							[c_1].[ParentID],
							[c_1].[ChildID]
						FROM
							[Child] [c_1]
								LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
						WHERE
							[a_Parent].[ParentID] = [f].[ParentID] AND ([a_Parent].[Value1] = [f].[Value1] OR [a_Parent].[Value1] IS NULL AND [f].[Value1] IS NULL)
					) [t1]
			) as [SubSum],
			[f].[ParentID]
		FROM
			[Parent] [f]
	) [t2]
WHERE
	N' ' + CAST(Coalesce([t2].[Value1], 0) AS NVarChar(11)) LIKE N'%1%' ESCAPE N'~' AND
	[t2].[SubSum] > 0

