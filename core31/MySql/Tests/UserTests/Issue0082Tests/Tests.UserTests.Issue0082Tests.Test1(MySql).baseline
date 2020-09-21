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
-- MySql MySql.Official MySql

SELECT
	`o`.`ParentID`,
	(
		SELECT
			Count(*)
		FROM
			`Child` `t1`
		WHERE
			`o`.`ParentID` = `t1`.`ParentID`
	),
	(
		SELECT
			Sum(`od`.`ParentID`)
		FROM
			`Child` `od`
		WHERE
			`od`.`ParentID` = `o`.`ParentID`
	)
FROM
	`Parent` `o`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Parent` `o`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`ParentID`,
	`x`.`CountResult`,
	`x`.`Sum_1`
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					`Child` `t1`
				WHERE
					`o`.`ParentID` = `t1`.`ParentID`
			) as `CountResult`,
			`o`.`ParentID`,
			(
				SELECT
					Sum(`od`.`ParentID`)
				FROM
					`Child` `od`
				WHERE
					`od`.`ParentID` = `o`.`ParentID`
			) as `Sum_1`
		FROM
			`Parent` `o`
	) `x`
WHERE
	`x`.`CountResult` > 0

