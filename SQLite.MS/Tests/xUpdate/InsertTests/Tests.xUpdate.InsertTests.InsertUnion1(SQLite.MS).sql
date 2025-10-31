-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SQLite.MS SQLite

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[t1].[ParentID] + 1000,
	[t1].[Value1]
FROM
	(
		SELECT
			[c_1].[ParentID],
			CASE
				WHEN CAST([c_1].[ChildID] AS Float) / 10 > 0 THEN CAST(CAST([c_1].[ChildID] AS Float) / 10 AS INTEGER)
				ELSE CAST(CAST([c_1].[ChildID] AS Float) / 10 - 0.99999999999999989 AS INTEGER)
			END as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			Coalesce([c_2].[ParentID], 0) as [ParentID],
			CAST(CASE
				WHEN CAST(Coalesce([c_2].[GrandChildID], 0) AS Float) / 100 > 0
					THEN CAST(CAST(Coalesce([c_2].[GrandChildID], 0) AS Float) / 100 AS INTEGER)
				ELSE CAST(CAST(Coalesce([c_2].[GrandChildID], 0) AS Float) / 100 - 0.99999999999999989 AS INTEGER)
			END AS Float) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

