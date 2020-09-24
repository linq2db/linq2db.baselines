BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Access AccessOleDb

SELECT
	[o].[ParentID],
	[t2].[CountResult],
	(
		SELECT
			Sum([od].[ParentID])
		FROM
			[Child] [od]
		WHERE
			[od].[ParentID] = [o].[ParentID]
	)
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT
				Count(*) as [CountResult],
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([o].[ParentID] = [t2].[ParentID])

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Parent] [o]

BeforeExecute
-- Access AccessOleDb

SELECT
	[x].[ParentID],
	[x].[CountResult],
	[x].[Sum_1]
FROM
	(
		SELECT
			[t2].[CountResult],
			[o].[ParentID],
			(
				SELECT
					Sum([od].[ParentID])
				FROM
					[Child] [od]
				WHERE
					[od].[ParentID] = [o].[ParentID]
			) as [Sum_1]
		FROM
			[Parent] [o]
				LEFT JOIN (
					SELECT
						Count(*) as [CountResult],
						[t1].[ParentID]
					FROM
						[Child] [t1]
					GROUP BY
						[t1].[ParentID]
				) [t2] ON ([o].[ParentID] = [t2].[ParentID])
	) [x]
WHERE
	[x].[CountResult] > 0

