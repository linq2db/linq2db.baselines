BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` = 10000

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 20000

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Child`
(
	`ChildID`,
	`ParentID`
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- MySql MySql.Official MySql

UPDATE
	`Parent` `t1`
		INNER JOIN `Child` `a_Parent` ON `a_Parent`.`ParentID` = `t1`.`ParentID`
SET
	`t1`.`Value1` = 5
WHERE
	`a_Parent`.`ChildID` = 10000 AND `t1`.`ParentID` > 0

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` = 10000

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 20000

