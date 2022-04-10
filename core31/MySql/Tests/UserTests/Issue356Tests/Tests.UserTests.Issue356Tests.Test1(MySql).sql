BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

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
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 10

SELECT
	`cp`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `cp`
		CROSS JOIN (
			SELECT DISTINCT
				`t3`.`ParentID`,
				`t3`.`ChildID`
			FROM
				(
					SELECT
						`t1`.`ParentID`,
						`t1`.`ChildID`
					FROM
						`Child` `t1`
					UNION
					SELECT
						`t2`.`ParentID`,
						`t2`.`ChildID`
					FROM
						`Child` `t2`
				) `t3`
		) `c_1`
WHERE
	`c_1`.`ParentID` = `cp`.`ParentID`
ORDER BY
	`cp`.`ParentID`,
	`c_1`.`ChildID`
LIMIT @take

