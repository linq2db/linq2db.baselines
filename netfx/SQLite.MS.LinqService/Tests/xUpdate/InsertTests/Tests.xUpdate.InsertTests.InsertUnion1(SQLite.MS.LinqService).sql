BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
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
				WHEN Cast([c_1].[ChildID] as Float) / 10 > 0
					THEN Cast((Cast([c_1].[ChildID] as Float) / 10) as INTEGER)
				ELSE Cast((Cast([c_1].[ChildID] as Float) / 10 - 0.99999999999999989) as INTEGER)
			END as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			Coalesce([c_2].[ParentID], 0) as [ParentID],
			Cast(CASE
				WHEN Cast(Coalesce([c_2].[GrandChildID], 0) as Float) / 100 > 0
					THEN Cast((Cast(Coalesce([c_2].[GrandChildID], 0) as Float) / 100) as INTEGER)
				ELSE Cast((Cast(Coalesce([c_2].[GrandChildID], 0) as Float) / 100 - 0.99999999999999989) as INTEGER)
			END as Float) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

