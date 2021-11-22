BeforeExecute
-- SQLite.MS SQLite
DECLARE @param  -- Int32
SET     @param = 2

SELECT
	[t1].[ChildID],
	[t1].[ParentID]
FROM
	(
		SELECT
			@param as [OrderElement],
			[ch].[ChildID],
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [t1]

