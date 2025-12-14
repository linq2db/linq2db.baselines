-- SqlServer.2016

SELECT
	[t6].[ParentID],
	[t6].[Value1],
	[t6].[ParentID_1],
	[t6].[ChildID],
	[t6].[Any_1],
	[t6].[ChildID_1],
	[t6].[ParentID_2],
	[t6].[ChildID_2],
	[t6].[ParentID_3],
	[t6].[ChildArray],
	[t6].[ChildArray_1],
	[t6].[ChildDictionary1],
	[t6].[ChildDictionary1_1],
	[t6].[ChildDictionary2],
	[t6].[ChildDictionary2_1],
	[t6].[ChildDictionary2_2],
	[t6].[ChildDictionary2_3]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1],
			[c1_1].[ParentID] as [ParentID_1],
			[c1_1].[ChildID],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[Child] [c_6]
				WHERE
					[c_6].[ChildID] > 2
			), 1, 0) as [Any_1],
			[t1].[ChildID] as [ChildID_1],
			[t1].[ParentID] as [ParentID_2],
			[t2].[ChildID] as [ChildID_2],
			[t2].[ParentID] as [ParentID_3],
			[t3].[ChildArray],
			[t3].[ChildArray_1],
			[t4].[ChildDictionary1],
			[t4].[ChildDictionary1_1],
			[t5].[ChildDictionary2],
			[t5].[ChildDictionary2_1],
			[t5].[ChildDictionary2_2],
			[t5].[ChildDictionary2_3]
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT TOP (1)
						[c1].[ParentID],
						[c1].[ChildID]
					FROM
						[Child] [c1]
					WHERE
						[c1].[ParentID] = [p].[ParentID]
				) [c1_1]
				OUTER APPLY (
					SELECT TOP (1)
						[c_1].[ChildID],
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ChildID] > 2 AND [c_1].[ParentID] >= [p].[ParentID]
				) [t1]
				LEFT JOIN (
					SELECT TOP (1)
						[c_2].[ChildID],
						[c_2].[ParentID]
					FROM
						[Child] [c_2]
					WHERE
						[c_2].[ChildID] > 2 AND [c_2].[ParentID] >= 2
				) [t2] ON 1=1
				OUTER APPLY (
					SELECT TOP (1)
						[c_3].[ChildID] as [ChildArray],
						[c_3].[ParentID] as [ChildArray_1]
					FROM
						[Child] [c_3]
					WHERE
						[c_3].[ChildID] > 2 AND [c_3].[ParentID] >= [p].[ParentID]
				) [t3]
				OUTER APPLY (
					SELECT TOP (1)
						[c_4].[ChildID] as [ChildDictionary1],
						[c_4].[ParentID] as [ChildDictionary1_1]
					FROM
						[Child] [c_4]
					WHERE
						[c_4].[ChildID] > 2 AND [c_4].[ParentID] >= [p].[ParentID]
				) [t4]
				OUTER APPLY (
					SELECT TOP (1)
						N'ChildID' as [ChildDictionary2],
						[c_5].[ChildID] as [ChildDictionary2_1],
						N'ParentID' as [ChildDictionary2_2],
						[c_5].[ParentID] as [ChildDictionary2_3]
					FROM
						[Child] [c_5]
					WHERE
						[c_5].[ChildID] > 2 AND [c_5].[ParentID] >= [p].[ParentID]
				) [t5]
	) [t6]
ORDER BY
	[t6].[ParentID]

