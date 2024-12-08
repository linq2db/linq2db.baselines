BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1
DECLARE @param  -- Int32
SET     @param = 2

SELECT
	[t1].[ChildID],
	[t1].[ParentID],
	[t1].[OrderElement]
FROM
	(
		SELECT
			[ch].[ChildID],
			[ch].[ParentID],
			@p as [OrderElement]
		FROM
			[Child] [ch]
		UNION ALL
		SELECT
			[ch_1].[ChildID],
			[ch_1].[ParentID],
			@param as [OrderElement]
		FROM
			[Child] [ch_1]
	) [t1]
ORDER BY
	[t1].[OrderElement]

