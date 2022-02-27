BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	1001
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	2
)

BeforeExecute
-- MySql MySql.Official MySql

DELETE `c_1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
WHERE
	`p`.`ParentID` >= 1000

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ParentID` >= 1000

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` >= 1000

