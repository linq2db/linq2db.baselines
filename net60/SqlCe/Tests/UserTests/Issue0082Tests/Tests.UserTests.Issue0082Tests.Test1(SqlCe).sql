﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SQLite.MS SQLite

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
-- SqlCe

SELECT
	[o].[ParentID],
	[t2].[CountResult],
	[t3].[Sum_1]
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
		) [t2] ON [o].[ParentID] = [t2].[ParentID]
		LEFT JOIN (
			SELECT
				Sum([od].[ParentID]) as [Sum_1],
				[od].[ParentID]
			FROM
				[Child] [od]
			GROUP BY
				[od].[ParentID]
		) [t3] ON [t3].[ParentID] = [o].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Parent] [o]

BeforeExecute
-- SqlCe

SELECT
	[o].[ParentID],
	[t2].[CountResult],
	[t3].[Sum_1]
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
		) [t2] ON [o].[ParentID] = [t2].[ParentID]
		LEFT JOIN (
			SELECT
				Sum([od].[ParentID]) as [Sum_1],
				[od].[ParentID]
			FROM
				[Child] [od]
			GROUP BY
				[od].[ParentID]
		) [t3] ON [t3].[ParentID] = [o].[ParentID]
WHERE
	[t2].[CountResult] > 0

