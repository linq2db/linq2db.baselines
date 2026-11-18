-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t1].[Max_1] IS NULL THEN [p].[Value1]
		ELSE [t1].[Max_1]
	END
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MAX([a_Children].[ChildID]) as [Max_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]

