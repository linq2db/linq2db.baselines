BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		CROSS JOIN (
			SELECT TOP (3)
				[p].[ParentID]
			FROM
				[GrandChild] [p]
		) [p_1]
WHERE
	[c_1].[ParentID] = [p_1].[ParentID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		CROSS JOIN (
			SELECT
				[p].[ParentID]
			FROM
				[GrandChild] [p]
			ORDER BY
				1
			OFFSET 12 ROWS FETCH NEXT 3 ROWS ONLY 
		) [p_1]
WHERE
	[c_1].[ParentID] = [p_1].[ParentID]

