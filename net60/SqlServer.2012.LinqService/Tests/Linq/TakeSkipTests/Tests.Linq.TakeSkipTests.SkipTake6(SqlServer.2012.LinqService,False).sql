BeforeExecute
-- SqlServer.2012

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1],
	(
		SELECT TOP (3)
			[p].[ParentID]
		FROM
			[GrandChild] [p]
	) [t1]
WHERE
	[c_1].[ParentID] = [t1].[ParentID]

BeforeExecute
-- SqlServer.2012

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1],
	(
		SELECT
			[p].[ParentID]
		FROM
			[GrandChild] [p]
		ORDER BY
			1
		OFFSET 12 ROWS FETCH NEXT 3 ROWS ONLY 
	) [t1]
WHERE
	[c_1].[ParentID] = [t1].[ParentID]

