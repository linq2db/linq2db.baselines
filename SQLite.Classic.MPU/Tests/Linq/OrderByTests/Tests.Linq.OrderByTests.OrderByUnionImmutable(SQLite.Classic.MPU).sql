BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 2

SELECT
	[t1].[ChildID],
	[t1].[ParentID],
	CASE
		WHEN [t1].[c1] IS NOT NULL THEN [t1].[c1]
		ELSE [t1].[c2]
	END
FROM
	(
		SELECT
			[ch].[ChildID],
			[ch].[ParentID],
			CAST(1 AS TinyInt) as [c1],
			NULL as [c2]
		FROM
			[Child] [ch]
		UNION ALL
		SELECT
			[ch_1].[ChildID],
			[ch_1].[ParentID],
			NULL as [c1],
			@param as [c2]
		FROM
			[Child] [ch_1]
	) [t1]
ORDER BY
	CASE
		WHEN [t1].[c1] IS NOT NULL THEN [t1].[c1]
		ELSE [t1].[c2]
	END

