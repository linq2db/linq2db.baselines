BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[CteChild] [c_1]
	WHERE
		[c_1].[ParentID] % 2 = 0
)
DELETE FROM
	[CteChild]
WHERE
	EXISTS(
		SELECT
			[ct].[ParentID]
		FROM
			[CteChild] [c_2]
				INNER JOIN [CTE_1] [ct] ON [ct].[ParentID] = [c_2].[ParentID]
		WHERE
			[CteChild].[ChildID] = [c_2].[ChildID] AND [CteChild].[ParentID] = [c_2].[ParentID]
	)

