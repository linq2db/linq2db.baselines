BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic SQLite

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
			Cast(Floor(Cast([c_1].[ChildID] as Float) / 10) as INTEGER) as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			Coalesce([c_2].[ParentID], 0) as [ParentID],
			Floor(Cast(Coalesce([c_2].[GrandChildID], 0) as Float) / 100) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

