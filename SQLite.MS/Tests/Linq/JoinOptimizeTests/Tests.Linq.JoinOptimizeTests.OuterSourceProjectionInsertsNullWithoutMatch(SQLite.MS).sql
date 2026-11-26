-- SQLite.MS SQLite
INSERT INTO [OuterValueTarget]
(
	[Id],
	[Value]
)
SELECT
	[c_1].[ChildID],
	CASE
		WHEN (
			SELECT
				1
			FROM
				[GrandChild] [V]
			WHERE
				[V].[ChildID] = [c_1].[ChildID]
			LIMIT 1
		) IS NOT NULL
			THEN [p].[Value1]
		ELSE NULL
	END
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[OuterValueTarget] [r]
ORDER BY
	[r].[Id]

