BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3)

