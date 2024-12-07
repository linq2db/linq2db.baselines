BeforeExecute
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 2

SELECT
	[t1].[ChildID],
	[t1].[ParentID],
	@param
FROM
	(
		SELECT
			[ch].[ChildID],
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [t1]

