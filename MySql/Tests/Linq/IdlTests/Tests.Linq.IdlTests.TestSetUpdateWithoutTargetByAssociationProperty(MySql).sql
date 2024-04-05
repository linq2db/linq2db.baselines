BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
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
	`Parent` `a_Parent`,
	`Child` `child_1`
SET
	`a_Parent`.`Value1` = 5
WHERE
	`child_1`.`ChildID` = 10000 AND `child_1`.`ParentID` = `a_Parent`.`ParentID`

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `x`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` = 10000

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `x`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` = 20000

