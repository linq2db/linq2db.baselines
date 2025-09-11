BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		CROSS JOIN (
			SELECT
				[t1].[ParentID]
			FROM
				(
					SELECT
						[p].[ParentID],
						ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
					FROM
						[GrandChild] [p]
				) [t1]
			WHERE
				[t1].[RN] > 12 AND [t1].[RN] <= 15
		) [p_1]
WHERE
	[c_1].[ParentID] = [p_1].[ParentID]

