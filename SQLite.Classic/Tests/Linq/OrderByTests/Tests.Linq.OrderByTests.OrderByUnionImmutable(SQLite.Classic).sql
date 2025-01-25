BeforeExecute
-- SQLite.Classic SQLite
DECLARE @OrderElement  -- Int32
SET     @OrderElement = 1
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
			@OrderElement as [OrderElement]
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

