BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[f].[ParentID],
	Lower(substr(hex([f].[Value1]), 7, 2) || substr(hex([f].[Value1]), 5, 2) || substr(hex([f].[Value1]), 3, 2) || substr(hex([f].[Value1]), 1, 2) || '-' || substr(hex([f].[Value1]), 11, 2) || substr(hex([f].[Value1]), 9, 2) || '-' || substr(hex([f].[Value1]), 15, 2) || substr(hex([f].[Value1]), 13, 2) || '-' || substr(hex([f].[Value1]), 17, 4) || '-' || substr(hex([f].[Value1]), 21, 12))
FROM
	[Parent] [f]

