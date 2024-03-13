BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[f_1].[Label_1],
	[f_1].[SubSum],
	[f_1].[Any_1],
	[f_1].[Count_1]
FROM
	(
		SELECT
			N' ' + Convert(NVarChar(11), Coalesce([f].[Value1], 0)) as [Label],
			(
				SELECT
					Sum([t1].[ChildID])
				FROM
					(
						SELECT
							[c_1].[ChildID]
						FROM
							[Child] [c_1]
								LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
						WHERE
							[a_Parent].[ParentID] = [f].[ParentID] AND ([a_Parent].[Value1] = [f].[Value1] OR [a_Parent].[Value1] IS NULL AND [f].[Value1] IS NULL)
					) [t1]
			) as [SubSum],
			N' ' + Convert(NVarChar(11), Coalesce([f].[Value1], 0)) as [Label_1],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[Child] [c_2]
						LEFT JOIN [Parent] [a_Parent_1] ON [c_2].[ParentID] = [a_Parent_1].[ParentID]
				WHERE
					[a_Parent_1].[ParentID] = [f].[ParentID] AND ([a_Parent_1].[Value1] = [f].[Value1] OR [a_Parent_1].[Value1] IS NULL AND [f].[Value1] IS NULL)
			), 1, 0) as [Any_1],
			(
				SELECT
					Count(*)
				FROM
					[Child] [p]
						LEFT JOIN [Parent] [a_Parent_2] ON [p].[ParentID] = [a_Parent_2].[ParentID]
				WHERE
					[a_Parent_2].[ParentID] = [f].[ParentID] AND ([a_Parent_2].[Value1] = [f].[Value1] OR [a_Parent_2].[Value1] IS NULL AND [f].[Value1] IS NULL)
			) as [Count_1]
		FROM
			[Parent] [f]
	) [f_1]
WHERE
	[f_1].[Label] LIKE N'%1%' ESCAPE N'~' AND [f_1].[SubSum] > 0

