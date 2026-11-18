-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[c_1].[ChildID],
	CASE
		WHEN [c_1].[ChildID] IS NULL THEN 0
		ELSE [c_1].[ChildID]
	END BETWEEN 0 AND 100,
	CASE
		WHEN [c_1].[ChildID] IS NULL THEN 0
		ELSE [c_1].[ChildID]
	END NOT BETWEEN 0 AND 100,
	CASE
		WHEN [c_1].[ChildID] BETWEEN 0 AND 100 THEN True
		ELSE False
	END
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID])
WHERE
	[p].[ParentID] = 5

