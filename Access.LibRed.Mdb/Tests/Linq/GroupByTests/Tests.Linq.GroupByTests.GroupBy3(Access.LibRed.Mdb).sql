-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT DISTINCT
	CASE
		WHEN [gr].[Value1] IS NULL THEN [c_1].[ChildID]
		ELSE [gr].[Value1]
	END
FROM
	[Parent] [gr]
		INNER JOIN [Child] [c_1] ON ([gr].[ParentID] = [c_1].[ParentID])

