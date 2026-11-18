-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[c_1].[ChildID],
	CASE
		WHEN Coalesce([c_1].[ChildID], 0) BETWEEN 0 AND 100 THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([c_1].[ChildID], 0) NOT BETWEEN 0 AND 100 THEN 1
		ELSE 0
	END,
	CASE
		WHEN [c_1].[ChildID] BETWEEN 0 AND 100 THEN 1
		ELSE 0
	END
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] = 5

