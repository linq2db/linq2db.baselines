BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 2

SELECT
	[t1].[ChildID],
	[t1].[ParentID],
	[t1].[OrderElement]
FROM
	(
		SELECT
			@param as [OrderElement],
			[ch].[ChildID],
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [t1]

