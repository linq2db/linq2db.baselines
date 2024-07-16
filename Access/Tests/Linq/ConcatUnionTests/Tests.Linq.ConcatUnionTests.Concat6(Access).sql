BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[c_1].[ChildID],
			(
				SELECT
					COUNT(*)
				FROM
					[GrandChild] [a_GrandChildren]
				WHERE
					[c_1].[ParentID] = [a_GrandChildren].[ParentID] AND
					[c_1].[ChildID] = [a_GrandChildren].[ChildID]
			) as [COUNT_1]
		FROM
			[Child] [c_1]
	) [t1]
WHERE
	[t1].[COUNT_1] = 2
UNION ALL
SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[c_2].[ParentID],
			[c_2].[ChildID],
			(
				SELECT
					COUNT(*)
				FROM
					[GrandChild] [a_GrandChildren_1]
				WHERE
					[c_2].[ParentID] = [a_GrandChildren_1].[ParentID] AND
					[c_2].[ChildID] = [a_GrandChildren_1].[ChildID]
			) as [COUNT_1]
		FROM
			[Child] [c_2]
	) [t2]
WHERE
	[t2].[COUNT_1] = 3

