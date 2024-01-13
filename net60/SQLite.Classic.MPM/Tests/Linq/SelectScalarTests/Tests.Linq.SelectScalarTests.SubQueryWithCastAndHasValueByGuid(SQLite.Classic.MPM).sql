BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT
			CASE
				WHEN [r].[GuidValue] IS NOT NULL
					THEN 1
				ELSE 0
			END
		FROM
			[LinqDataTypes] [r]
		LIMIT 1
	) = 1

