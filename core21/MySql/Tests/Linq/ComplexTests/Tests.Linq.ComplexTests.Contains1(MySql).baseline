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

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

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
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`t2`.`gc3`,
	`t2`.`ChildID`,
	`t2`.`GrandChildID`,
	`t2`.`is_empty`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
		LEFT JOIN (
			SELECT
				`gc1`.`ParentID` as `gc3`,
				`gc1`.`ChildID`,
				`gc1`.`GrandChildID`,
				1 as `is_empty`
			FROM
				`GrandChild` `gc1`
					INNER JOIN (
						SELECT
							Max(`t1`.`GrandChildID`) as `c1`
						FROM
							`GrandChild` `t1`
						GROUP BY
							`t1`.`ChildID`
					) `max_1` ON (`gc1`.`GrandChildID` IS NULL AND `max_1`.`c1` IS NULL OR `gc1`.`GrandChildID` = `max_1`.`c1`)
		) `t2` ON `p`.`ParentID` = `t2`.`gc3`
WHERE
	(`t2`.`gc3` IS NULL AND `t2`.`ChildID` IS NULL AND `t2`.`GrandChildID` IS NULL OR (`t2`.`GrandChildID` IS NULL OR `t2`.`GrandChildID` NOT IN (111, 222)))

