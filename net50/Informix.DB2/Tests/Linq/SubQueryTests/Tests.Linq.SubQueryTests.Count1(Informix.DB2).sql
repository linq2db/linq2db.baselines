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
-- Informix.DB2 Informix

SELECT
	p_1.ParentID,
	p_1.Sum_2
FROM
	(
		SELECT
			(
				SELECT
					Sum(t.ParentID)
				FROM
					Child t
				WHERE
					p.ParentID = t.ParentID AND t.ParentID > 0
			) / 2 as Sum_1,
			p.ParentID,
			(
				SELECT
					Sum(t.ParentID)
				FROM
					Child t
				WHERE
					p.ParentID = t.ParentID AND t.ParentID > 0
			) as Sum_2
		FROM
			Parent p
	) p_1
WHERE
	p_1.Sum_1 > 1

