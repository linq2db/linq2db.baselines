BeforeExecute
-- SQLite.Classic SQLite
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
			@p as [OrderElement],
			[ch].[ChildID],
			[ch].[ParentID]
		FROM
			[Child] [ch]
		UNION ALL
		SELECT
			@param as [OrderElement],
			[ch_1].[ChildID],
			[ch_1].[ParentID]
		FROM
			[Child] [ch_1]
	) [t1]
ORDER BY
	[t1].[OrderElement]

