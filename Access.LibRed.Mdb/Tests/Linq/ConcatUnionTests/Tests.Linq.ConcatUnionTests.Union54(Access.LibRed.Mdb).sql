-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p1].[ParentID],
	[p1].[ParentID] as [ParentID_1],
	[p1].[Value1],
	IIF(False, 0, NULL) as [c1],
	IIF(False, 0, NULL) as [ParentID_2],
	IIF(False, 0, NULL) as [ChildID]
FROM
	[Parent] [p1]
UNION
SELECT
	CASE
		WHEN [p2].[Value1] IS NULL THEN 0
		ELSE [p2].[Value1]
	END as [ParentID],
	IIF(False, 0, NULL) as [ParentID_1],
	IIF(False, 0, NULL) as [Value1],
	[t1].[ParentID] as [c1],
	[t1].[ParentID] as [ParentID_2],
	[t1].[ChildID]
FROM
	[Parent] [p2]
		OUTER APPLY (
			SELECT TOP 1
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[p2].[ParentID] = [a_Children].[ParentID]
			ORDER BY
				[a_Children].[ChildID] DESC
		) [t1]

