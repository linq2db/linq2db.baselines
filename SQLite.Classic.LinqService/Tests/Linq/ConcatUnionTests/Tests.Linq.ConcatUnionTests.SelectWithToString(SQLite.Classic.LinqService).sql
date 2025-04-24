BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x_1].[StrValue]
FROM
	(
		SELECT
			Lower(substr(hex([x].[Value1]), 7, 2) || substr(hex([x].[Value1]), 5, 2) || substr(hex([x].[Value1]), 3, 2) || substr(hex([x].[Value1]), 1, 2) || '-' || substr(hex([x].[Value1]), 11, 2) || substr(hex([x].[Value1]), 9, 2) || '-' || substr(hex([x].[Value1]), 15, 2) || substr(hex([x].[Value1]), 13, 2) || '-' || substr(hex([x].[Value1]), 17, 4) || '-' || substr(hex([x].[Value1]), 21, 12)) as [StrValue]
		FROM
			[Parent] [x]
		UNION ALL
		SELECT
			Lower(substr(hex([a_Parent1].[Value1]), 7, 2) || substr(hex([a_Parent1].[Value1]), 5, 2) || substr(hex([a_Parent1].[Value1]), 3, 2) || substr(hex([a_Parent1].[Value1]), 1, 2) || '-' || substr(hex([a_Parent1].[Value1]), 11, 2) || substr(hex([a_Parent1].[Value1]), 9, 2) || '-' || substr(hex([a_Parent1].[Value1]), 15, 2) || substr(hex([a_Parent1].[Value1]), 13, 2) || '-' || substr(hex([a_Parent1].[Value1]), 17, 4) || '-' || substr(hex([a_Parent1].[Value1]), 21, 12)) as [StrValue]
		FROM
			[Parent] [t1]
				INNER JOIN [Child] [c_1] ON [t1].[ParentID] = [c_1].[ParentID]
				INNER JOIN [Parent] [a_Parent1] ON [c_1].[ParentID] = [a_Parent1].[ParentID]
	) [x_1]
WHERE
	[x_1].[StrValue] IS NOT NULL

